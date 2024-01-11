class Person {}

class InstancePerson {
  static InstancePerson? instace;

  factory InstancePerson() {
    if (instace == null) {
      instace = InstancePerson._instace();
    }
    return InstancePerson.instace!;
  }

  InstancePerson._instace() {}
}

void main() {
  Person p1 = new Person();
  print(p1.hashCode);
  Person p2 = new Person();
  print(p2.hashCode);

  InstancePerson p3 = new InstancePerson();
  print(p3.hashCode);
  InstancePerson p4 = new InstancePerson();
  print(p4.hashCode);
}
