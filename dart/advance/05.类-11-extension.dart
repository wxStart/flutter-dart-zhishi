extension ExtensionString on String {
  int parseInt() {
    return int.parse(this);
  }
}

void main() {
  String s1 = '10';
  print(s1.parseInt());
}
