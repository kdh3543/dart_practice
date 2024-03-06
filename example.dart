void main() {
  var apiData = [
    {'name': 'test1', 'team': 'yellow', 'xp': 0},
    {'name': 'test2', 'team': 'red', 'xp': 3},
    {'name': 'test3', 'team': 'green', 'xp': 5}
  ];
  apiData.forEach((playerJson) {
    var player = Player.fromJson(playerJson);
    player.sayHello();
  });
}

class Player {
  final String name;
  int xp;
  String team;
  Player.fromJson(Map<String, dynamic> plyerJson)
      : name = plyerJson['name'],
        xp = plyerJson['xp'],
        team = plyerJson['team'];
  void sayHello() {
    print('hello $name');
  }
}
