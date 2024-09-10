// void = return하지 않는 함수
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
}
