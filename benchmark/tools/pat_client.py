"""Small local SSE MCP client for the verified PAT endpoint."""
import argparse
import json
import queue
import threading
import urllib.request


class PatClient:
    def __init__(self):
        self.messages = queue.Queue()
        self.endpoint = queue.Queue()
        self.counter = 0
        self.stream = urllib.request.urlopen("http://127.0.0.1:64342/sse", timeout=180)
        threading.Thread(target=self._read, daemon=True).start()
        self.url = "http://127.0.0.1:64342" + self.endpoint.get(timeout=15)
        self.request("initialize", {
            "protocolVersion": "2024-11-05",
            "capabilities": {},
            "clientInfo": {"name": "ql-benchmark", "version": "1"},
        })
        self.notify("notifications/initialized", {})

    def _read(self):
        event = ""
        for raw in self.stream:
            line = raw.decode("utf-8").strip()
            if line.startswith("event:"):
                event = line[6:].strip()
            elif line.startswith("data:"):
                data = line[5:].strip()
                if event == "endpoint":
                    self.endpoint.put(data)
                elif event == "message":
                    self.messages.put(json.loads(data))

    def _post(self, payload):
        data = json.dumps(payload).encode("utf-8")
        request = urllib.request.Request(self.url, data=data, headers={"Content-Type": "application/json"})
        with urllib.request.urlopen(request, timeout=180) as response:
            response.read()

    def notify(self, method, params):
        self._post({"jsonrpc": "2.0", "method": method, "params": params})

    def request(self, method, params):
        self.counter += 1
        request_id = self.counter
        self._post({"jsonrpc": "2.0", "id": request_id, "method": method, "params": params})
        while True:
            response = self.messages.get(timeout=180)
            if response.get("id") == request_id:
                if "error" in response:
                    raise RuntimeError(json.dumps(response["error"]))
                return response["result"]


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("method", choices=["tools/list", "tools/call"])
    parser.add_argument("--name")
    parser.add_argument("--arguments", default="{}")
    parser.add_argument("--output")
    args = parser.parse_args()
    params = {} if args.method == "tools/list" else {
        "name": args.name, "arguments": json.loads(args.arguments),
    }
    result = PatClient().request(args.method, params)
    text = json.dumps(result, indent=2, ensure_ascii=True)
    if args.output:
        with open(args.output, "w", encoding="utf-8") as file:
            file.write(text + "\n")
    else:
        print(text)
