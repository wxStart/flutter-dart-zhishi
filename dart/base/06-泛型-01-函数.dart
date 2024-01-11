getFn<T>(T value) {
  return value;
}

void main() {
  getFn<int>(10);
  // getFn<int>("10"); // 报错
  getFn<String>('10');
}
