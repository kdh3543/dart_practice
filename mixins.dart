// mixin -> 생성자가 없는 클래스
// 클래스에 프로퍼티들을 추가할 때 사용
mixin Strong {
  final double strengthLevel = 1500.99;
}
mixin QuickRunner {
  void runQuick() {
    print('runnnn');
  }
}

mixin Tall {
  final double height = 1.99;
}

enum Team { blue, red }

class Player with Strong, QuickRunner, Tall {
  final Team team;
  Player({
    required this.team,
  });
}

void main() {
  var player = Player(team: Team.blue);
  player.runQuick();
  print(player.height);
}
