// dart는 auto formatter가 없다.
// 따라서 세미콜론을 반드시 붙여주어야 한다.
// casecode 퓨처가 있기 때문에 세미콜론에 대한 포매터가 존재하지 않음.
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
}
