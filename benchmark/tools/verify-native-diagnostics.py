"""Verify native QL diagnostics through PAT's live MPS model checker."""
import datetime
import json
from pathlib import Path
import shutil
import sys

sys.path.insert(0, str(Path(__file__).resolve().parent))
from pat_client import PatClient

PROJECT = r"C:\Sources\mps-lwc25"
FIXTURES = {
    "valid-benefit-survey": "r:30d1f7ef-ee36-4bbf-a5bc-da6b15e2da30(QuestionnaireExample)/2589700000046743236",
    "valid-reference-target": "r:30d1f7ef-ee36-4bbf-a5bc-da6b15e2da30(QuestionnaireExample)/2589700000047521151",
    "invalid-semantic-matrix": "r:30d1f7ef-ee36-4bbf-a5bc-da6b15e2da30(QuestionnaireExample)/2589700000047014753",
}
EVIDENCE = Path(__file__).resolve().parents[1] / "evidence" / "completion"


def utc_now():
    return datetime.datetime.now(datetime.timezone.utc).isoformat()


def native_check(client, label, reference):
    arguments = {
        "projectPath": PROJECT,
        "nodeReference": reference,
        "onlyNodesWithProblems": False,
    }
    result = client.request(
        "tools/call",
        {"name": "mps_mcp_check_root_node_problems", "arguments": arguments},
    )
    (EVIDENCE / f"native-check-{label}.json").write_text(
        json.dumps({"timestamp": utc_now(), "arguments": arguments, "result": result}, indent=2),
        encoding="utf-8",
    )
    if not result.get("content"):
        raise AssertionError(f"PAT returned no content for {label}")
    payload = json.loads(result["content"][0]["text"])
    if payload.get("ok") is not True:
        raise AssertionError(f"PAT check failed for {label}: {payload}")
    data = payload.get("data")
    if data == "no problems found":
        return {"clean": True, "messages": [], "evidence": None}
    if not isinstance(data, str) or not Path(data).is_file():
        raise AssertionError(f"PAT returned no diagnostic data for {label}: {payload}")
    evidence_file = EVIDENCE / f"native-check-{label}-data.json"
    shutil.copyfile(data, evidence_file)
    tree = json.loads(evidence_file.read_text(encoding="utf-8"))
    if tree.get("ok") is not True:
        raise AssertionError(f"PAT diagnostic tree is malformed for {label}: {tree}")
    root = tree.get("data", {})
    messages = [problem.get("message", "") for problem in root.get("problems", [])]
    return {"clean": not messages, "messages": messages, "evidence": str(evidence_file)}


def main():
    started = utc_now()
    EVIDENCE.mkdir(parents=True, exist_ok=True)
    client = PatClient()
    checks = {label: native_check(client, label, ref) for label, ref in FIXTURES.items()}

    for label in ("valid-benefit-survey", "valid-reference-target"):
        if not checks[label]["clean"]:
            raise AssertionError(f"Valid native form {label} has MPS diagnostics: {checks[label]['messages']}")

    diagnostics = "\n".join(checks["invalid-semantic-matrix"]["messages"])
    required = {
        "nested duplicate identifiers": "[QL_DUPLICATE_ID] duplicate identifier 'duplicate' on Duplicate one (duplicate) and Nested duplicate (duplicate)",
        "unresolved references": "[QL_REFERENCE_UNRESOLVED]",
        "out-of-form references": "[QL_REFERENCE_OUT_OF_FORM]",
        "arithmetic operand typing": "[QL_OPERAND_TYPE] + requires two numeric operands or two strings, got string and integer",
        "subtraction operand typing": "[QL_OPERAND_TYPE] - requires numeric operands, got string and integer",
        "multiplication operand typing": "[QL_OPERAND_TYPE] * requires numeric operands, got string and integer",
        "division operand typing": "[QL_OPERAND_TYPE] / requires numeric operands, got string and integer",
        "logical operand typing": "[QL_OPERAND_TYPE] && requires boolean operands, got boolean and integer",
        "disjunction operand typing": "[QL_OPERAND_TYPE] || requires boolean operands, got boolean and integer",
        "unary operand typing": "[QL_OPERAND_TYPE] unary ! requires boolean, got integer",
        "unary numeric operand typing": "[QL_OPERAND_TYPE] unary - requires a numeric operand, got boolean",
        "comparison operand typing": "[QL_OPERAND_TYPE] > requires compatible ordered operands, got string and integer",
        "less-than operand typing": "[QL_OPERAND_TYPE] < requires compatible ordered operands, got string and integer",
        "greater-or-equal operand typing": "[QL_OPERAND_TYPE] >= requires compatible ordered operands, got string and integer",
        "less-or-equal operand typing": "[QL_OPERAND_TYPE] <= requires compatible ordered operands, got string and integer",
        "equality operand typing": "[QL_OPERAND_TYPE] == requires compatible operands, got string and integer",
        "inequality operand typing": "[QL_OPERAND_TYPE] != requires compatible operands, got string and integer",
        "calculated result typing": "[QL_RESULT_TYPE] computed question 'badResult' declares boolean but its expression produces integer",
        "branch condition typing": "[QL_CONDITION_TYPE] branch condition must be boolean, got integer",
        "indirect dependency cycle": "[QL_DEPENDENCY_CYCLE] cycleA -> cycleB -> cycleA",
        "direct dependency cycle": "[QL_DEPENDENCY_CYCLE] directCycle -> directCycle",
    }
    missing = [label for label, text in required.items() if text not in diagnostics]
    if missing:
        raise AssertionError(f"Native MPS checks missed required cases {missing}. Actual diagnostics:\n{diagnostics}")

    report = {
        "startedAt": started,
        "completedAt": utc_now(),
        "provider": "PAT tools/call -> mps_mcp_check_root_node_problems",
        "projectPath": PROJECT,
        "checks": checks,
        "assertedCategories": list(required),
        "assertionCount": len(required) + 2,
        "result": "PASS",
    }
    report_path = EVIDENCE / "native-diagnostics-assertions.json"
    report_path.write_text(json.dumps(report, indent=2, ensure_ascii=False), encoding="utf-8")
    print(json.dumps({"result": report["result"], "assertionCount": report["assertionCount"], "report": str(report_path)}, indent=2))


if __name__ == "__main__":
    main()
