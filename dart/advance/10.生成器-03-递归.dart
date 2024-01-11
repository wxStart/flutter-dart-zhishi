//递归
Iterable<int> getStart(int start, int end) sync* {
  if (start < end) {
    yield start;
    // for (var element in getStart(start + 1, end)) {
    //   yield element;
    // }
    yield* getStart(start + 1, end);
  }
}

void main(List<String> args) {
  print('start sync');
  Iterable<int> s = getStart(1, 5);
  s.forEach((element) {
    print(element);
  });
  print('end sync');
}
