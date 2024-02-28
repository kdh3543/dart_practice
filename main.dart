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
  // if(test != null){
  //   test.isNotEmpty;
  // }
}
