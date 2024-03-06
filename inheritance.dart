class Human {
  final String name;
  Human({required this.name});
  void sayHi() {
    print('hi my name is $name');
  }
}

enum Team { blue, red }

class Player extends Human {
  final Team team;
  // super 키워드로 부모 클래스와 상호작용
  // : 뒤에 super
  Player({
    required this.team,
    required String name,
  }) : super(name: name);

  @override
  void sayHi() {
    super.sayHi();
    print('and i play ${team}');
  }
}

// 상속 inheritance
void main() {
  var player = Player(team: Team.blue, name: 'zed');
  player.sayHi();
}
