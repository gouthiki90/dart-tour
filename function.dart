// void = return하지 않는 함수
import 'dart:mirrors';

void sayHello(String name) {
  // call api
  // ...
  print("Hello $name nice to meet you");
}

// return함수라면 타입을 지정해주어야 함
String sayBye(String name) => "Bye bye $name";
// 익명함수
num plus(num a, num b) => a + b;

// null safty 때문에 중괄호만 사용하면 되는 게 아니다.
// 1. 기본값을 정해주거나
// 2. required modified를 지정한다.
String sayHelloHello(
    {required String name, required age, required String country}) {
  return "Hello $name, you are $age, and you come forom $country";
}

// String sayHelloHello({String name = '', age = 0, String country = ''}) {
//   return "Hello $name, you are $age, and you come forom $country";
// }

// 옵셔널로 필수 파라미터를 제외할 수 있다.
String sayByeHello(String name, int age, [String? country = 'cuba']) =>
    "Hello $name, you are $age, and you come forom $country";

String capitallizeName(String? name) => name?.toUpperCase() ?? 'ANON';
// QQ operator
//  left ?? right
// left가 null일 때 right를 return한다.
// 이렇게 쓸 수도 있지만...
// name != null ? name.toUpperCase() : 'ANON';
// if (name != null) {
//   return name.toUpperCase();
// }

// return 'ANON';

// 임의로 지정한 타입
typedef ListOfInts = List<int>;
ListOfInts reverseListOfNumbers(ListOfInts list) {
  var reversed = list.reversed;
  return reversed.toList();
}

// 만약 구조화된 data의 형태를 지정하고 싶다면 map 보다 class를 사용하는 게 맞을 것이다.
typedef UserInfo = Map<String, String>;

// 유저가 방문할 때마다 인사를 하는 함수를 만들고 싶다.
// 안에 들어갈 데이터를 구체화 하고 싶다면...
String sayHi(UserInfo userInfo) {
  return "Hi ${userInfo['name']}";
}

void main() {
  // function
  print(sayBye('nico'));
  sayHello('nico');

  // named parameters
  // 이로서는 읽었을 때 바로 이해하기 어렵고 순서를 잊을 수 있기 때문에 좋은 방식은 아니다.
  //sayHelloHello('nico', 12, 'cuba');
  // 기본값이 있기 때문에 유저가 어떻게 전달하든 null값이 생기지 않는다.
  sayHelloHello(
    age: 12,
    country: 'cuba',
    name: 'nico',
  );
  // sayHelloHello();

  // optional positional parameters
  var result = sayByeHello('name', 12);
  print(result);
  // Hello name, you are 12, and you come forom cuba

  // operator
  capitallizeName('nico');
  capitallizeName(null);

  String? name;
  // name이 null일 때 좌항을 return한다.
  name ??= 'nico';
  name = null;
  name ??= 'another';
  print(name);

  // typedef
  print(reverseListOfNumbers([1, 2, 3]));
  // [3, 2, 1]
  print(sayHi({
    "name": 'nico',
  }));
}
