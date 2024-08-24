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
}
