enum Team { red, blue }

enum XPLevel { beginner, medium, pro }

void main() {
  var player = Player(
    name: 'test',
    age: 15,
    xp: XPLevel.beginner,
    team: Team.blue,
  );
}

class Player {
  String name;
  int age;
  XPLevel xp;
  // enum을 설정해서 변수 데이터를 고정시키고 오류를 최소화
  Team team;

  Player({
    required this.name,
    required this.age,
    required this.xp,
    required this.team,
  });
}
