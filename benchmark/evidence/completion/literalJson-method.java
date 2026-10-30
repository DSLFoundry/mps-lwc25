public static String literalJson(String value, String type) {
  if (!"string".equals(type)) return value == null ? "null" : value;
  String text = value == null ? "" : value;
  StringBuilder result = new StringBuilder();
  result.append('"');
  for (int i = 0; i < text.length(); i++) {
    char c = text.charAt(i);
    if (c == '"') result.append('\\').append('"');
    else if (c == '\\') result.append('\\').append('\\');
    else if (c == '\b') result.append('\\').append('b');
    else if (c == '\f') result.append('\\').append('f');
    else if (c == '\n') result.append('\\').append('n');
    else if (c == '\r') result.append('\\').append('r');
    else if (c == '\t') result.append('\\').append('t');
    else if (c < 32) {
      result.append('\\').append('u');
      String hex = Integer.toHexString((int) c);
      for (int pad = hex.length(); pad < 4; pad++) result.append('0');
      result.append(hex);
    } else result.append(c);
  }
  result.append('"');
  return result.toString();
}
