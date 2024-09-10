// dart는 auto formatter가 없다.
// 따라서 세미콜론을 반드시 붙여주어야 한다.
// casecode 퓨처가 있기 때문에 세미콜론에 대한 포매터가 존재하지 않음.
import 'dart:ffi';

void main() {
  print('hello world');

  // 타입을 알기 때문에 지정할 필요 없음
  var name = '송이';
  name = '나단이'; // var는 타입을 먼저 지정하면 바꿀 수 없음
  // 함수나 메소드 내부에 있는 지역변수를 선언할 때에 사용함
  // class 안에서는 타입을 지정함 자바와 비슷함

  // dynamic 변수
  dynamic home;
  home = '오피스텔';
  home = 12;
  home = true;
  // 개발 작업을 하다보면 변수가 어떤 타입이 될지 모를 때까 있다. 이를 위한 것.

  if (home is String) {
    // home. 를 해서 보면 메소드가 많아진다.
    // 지역 변수로 들어갈 땐 타입을 확인하는 게 좋다.
  }
  // 변수가 모호하기 때문에 정말로 필요할 때만 사용하는 게 좋다.

  // null safty: 런타임 에러가 생김(NoSuchMethodError)
  // 컴파일이 잡지 못하는 null error를 잡음
  String? nico = 'nico';
  nico = null;
  // 타입 옆에 붙이면 null이 있을 수 있다는 것을 명명함
  //nico.length;
  // The property 'length' can't be unconditionally accessed because the receiver can be 'null'.
  if (nico != null) {
    nico.isNotEmpty;
  }
  // ->
  nico?.isNotEmpty;
  // 간단하게 null 체크가 가능

  // 수정 불가능 변수
  final person = 'Jhon';
  // person = 'Ann'; 불가

  // 초기 데이터 없이 선언할 수 있는 변수
  late final dog;
  // do something
  // print(dog); 값을 넣기 전에 함수를 사용하는 것을 방지
  dog = 'dog';
  print(dog);
  // 변수를 만들고 api 요청이 들어왔을 때 값을 넣어줄 때 많이 사용하게 됨

  // 상수
  // compile time constant를 만듦
  // 앱을 퍼블리쉬하기 전에 알고 있는 값을 명명할 때 사용함
  const max_allowed_price = 120;
  // 사용자가 입력하는 값과 같은 변수는 final, var가 좋음

  // 자료형
  // dart는 모든 타입이 object로 이루어져있음
  String s = "object";
  int i = 11;
  double d = 0.0;
  bool b = false;
  num x = 12; // int, double의 부모객체
  x = 1.1;

  // List
  // 모두 class로 되어있고 object를 상속받고 있다.
  var numbers = [
    1,
    2,
    3,
    4,
  ];
  var giveMeFive = true;
  List<int> numberss = [
    1,
    2,
    3,
    4,
    if (giveMeFive) 5, // 리스트 안에서 조건문이 가능
  ]; // 마지막에 쉼표를 추가함으로써 더 깔끔한 포맷팅 가능
  print(numberss);
  numbers.add(1);
  numberss.first; // 첫 번째 값 가져오기

  // String Interpolation
  var animanl = 'cat';
  var age = 10;
  // 문자열에 변수 넣기 $ / 문자열에 수식 넣기${}
  var greeting =
      'Hello everyone, my name is $animanl and I\'m ${age + 2} nice to meet you';
  print(greeting);

  // Collection For
  var oldFrineds = ['nice', 'lynn'];
  // nav를 만들거나 UI 리스트를 만들 때 자주 사용하게 될 것임
  var newFrineds = [
    'lewis',
    'ralph',
    'darren',
    for (var friend in oldFrineds) "💖 $friend"
  ];
  // 이를 쉽게 줄일 수 있다.
  // for (var friend in oldFrineds) {
  //   newFrineds.add("💖 $friend");
  //   print(newFrineds);
  // }
  print(newFrineds);

  // Maps
  // 해당 변수의 자료형은 Map이다.
  // var를 사용할 때는 자료형을 따로 명시해줄 필요가 없다.
  // 컴파일러가 자료형을 정해주기 때문이다.
  var player = {
    'name': 'nico',
    'xp': 19.99,
    'superpower': false,
  };
  // key, value값으로 Map<String, Object> 타입이 된다.

  // 임의로 자료형을 정해두고 선언할 수도 있다.
  Map<int, bool> palyer2 = {
    1: true,
    2: false,
    3: true,
  };

  // 예시
  Map<List<int>, bool> palyer3 = {
    [
      1,
      2,
    ]: true,
    [
      3,
      4,
    ]: false,
    [
      5,
      6,
    ]: true,
  };

  // 모든 객체는 class로 이루어져있기 때문에 method와 property를 모두 가지고 있다.
  // player.isEmpty()
  List<Map<String, Object>> playerss = [
    {
      'name': 'nico',
      'xp': 12234.111,
    }
  ];
  // key value값을 설정할 때 API 값과 같은 데이터를 다루게 된다면 Map을 사용하는 것보다 class를 사용하는 것이 dart에 최적이다.

  // Set
  // 안에 들어있는 모든 값은 유니크값이 된다.
  Set<int> numbersss = {
    1,
    2,
    3,
    4,
  };
  numbersss.add(1);
  numbersss.add(1);
  numbersss.add(1);
  print(numbersss); // 1이 중복되지 않음
  // python의 tuple 타입과 같음
}
