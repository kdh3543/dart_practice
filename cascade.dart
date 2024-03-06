void main() {
  // cascade notation
  // .. => class 변수를 설정할 수 있음
  var test = Player(name: 'test', age: 15, xp: 1300)
    ..name = 'test2'
    ..age = 20
    ..xp = 1250;

  // 변수를 따로 할당해서 적용가능
  var test2 = test
    ..name = 'notion'
    ..age = 25
    ..xp = 1500
    ..sayHi();
}

class Player {
  String name;
  int age;
  int xp;

  Player({
    required this.name,
    required this.age,
    required this.xp,
  });
  void sayHi() {
    print('hi name is $name');
  }
}
