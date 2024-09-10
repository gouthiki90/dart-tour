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

void main() {
  // function
  print(sayBye('nico'));
  sayHello('nico');
}
