enum Color { red, blue, green }

void main() {
  print(Color);
   print(Color.values);
  print(Color.values[0]);
  print(Color.blue.index); // 1
  print(Color.green.index); // 2


  Color.values.forEach((element) {
    print(element);
  });
}
