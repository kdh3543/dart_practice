class Player {
  // dart class는 this를 사용할 필요가 X
  String name = 'player';
  int xp = 1500;

  void sayHi() {
    print('hello $name');
  }
}

void main() {
  // new 를 붙이지 않아도 인스턴스가 생성이 됨
  var player = Player();
  print(player.name);
  player.sayHi();

  //
  var constructor = Constructor('construct', 1400);
  print(constructor.name);

  // constructor 파라미터가 많을 때는 어떤 파라미터인지 모를 수 있음
  // => named constructor를 사용하면 해결됨
  var named = namedConstructor(name: '테스트 중', xp: 13, country: 'mexico');
  print(named.country);
}

// constructors
class Constructor {
  late final String name;
  late int xp;
  // Constructor(String name, int xp) {
  //   this.name = name;
  //   this.xp = xp;
  // }
  // 더 간결한 코드
  Constructor(this.name, this.xp);
}

// named constructor
class namedConstructor {
  late String name;
  late int xp;
  late String country;
  namedConstructor(
      {required this.name, required this.xp, required this.country});
}
