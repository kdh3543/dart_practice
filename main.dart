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
  List<int> numbers = [1, 2, 3, 4, 5];
  numbers.add(1);
}
