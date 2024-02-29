// null safety
// without null safety
bool isEmpty(String string) => string.length == 0;

void main() {
  var name = 'test'; // = String name
  print(name);
  //dynamic -여러가지 타입을
  dynamic val;
  val = 12;
  print(val);
  if (val is String) {}
  if (name is int) {}

  // isEmpty(null);

  // null safety(? 붙여주면 됨)
  String? test = 'test2';
  test = null;
  test?.isNotEmpty;
  // 밑에도 가능
  // if(test != null){
  //   test.isNotEmpty;
  // }

  //final -> 한번만 설정할 수 있는 변수
  final x = 'final';
  // x = 'first'; -> 에러

  // late (초기 데이터 없이 변수 선언 가능)
  late final String y;
  y = 'late';
  final z;
  print(y);
  z = 'name';
  print(z);

  // js, ts의 const와 다름 완전 상수의 개념
  const na = 'nameNA';

  // dart 자료형
  // String, bool, int, double
  // dart는 대부분 object로 이뤄져있음(객체 지향 언어)
  // num => int or double,

  //list
  // List<int> numbers = [
  //   1,
  //   2,
  //   3,
  //   4,
  // ];
  var giveMeFive = true;

  // collection if
  var numbers = [
    1,
    2,
    3,
    4,
    if (giveMeFive) 5,
  ];
  print(numbers);
  var age = 10;
  // $ 변수 => string 값안에서 변수 사용 가능
  var greeting = "Hello my name is $name i'm $age years";
  print(greeting);

  //collection for
  var oldFriends = [1, 2];
  var newFriends = [3, 4, 5, for (var value in oldFriends) "good $value"];
  print(newFriends);

  // map
  var player = {
    'name': 'test',
    'xp': 19.24,
    'power': false,
  };
  // ==> Map<key, value>

  Map<int, bool> player2 = {
    1: true,
    2: false,
  };

  List<Map<String, int>> player3 = [
    {'test': 1, 'test2': 2},
    {'test': 1, 'test2': 2},
  ];
  // set
  // set list 차이점 => set에있는 값들은 모두 유니크한 값
  Set<int> list = {1, 2, 3, 4};
  var list2 = {1, 2, 3, 4}; // ==> set
  list.add(1);
  // ==> result = {1,2,3,4}

  testSay('kevin');
  print(testSay2(name));
  print(plus(1, 3));

  // named argument
  print(multipleString(age: 19, country: 'mexico'));
}

// function
// void는 아무것도 리턴 x
void testSay(String name) {
  print('hello my name is $name ');
}

String testSay2(String name) {
  return 'Hello my name is $name';
}

// 중괄호 대신 fat arrow syntax 사용 가능
String testSay3(String name) => 'Hello this is $name';

num plus(num a, num b) => a + b;

// named argument를 사용할 때 null safety가 적용됨
String multipleString(
    {String name = 'test', int age = 45, String country = 'korea'}) {
  return "Hello $name, you are $age, you come from $country";
}

//
String multipleString2(
    {required String name, required int age, required String country}) {
  return "Hello $name, you are $age, you come from $country";
}
