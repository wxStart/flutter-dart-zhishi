class Person {
  String name;

  String _sname = '我是私有的，仅本文件可以访问';

  Person(this.name);

  String getSname() {
    return this._sname;
  }
}
