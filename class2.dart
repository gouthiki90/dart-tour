// 타입을 지정하여 파라미터 작성 시 실수를 줄여줄 수 있다.
// 예를 들어 css의 padding 값 등
enum Team { red, blue }

class Player {
  String name;
  int xp;
  Team team;

  // 생성자
  // class에서 이미 타입을 지정해뒀기 때문에 생성자에서 타입을 다시 지정할 필요가 없다.
  // named constructor
  Player({
    required this.name,
    required this.xp,
    required this.team,
  });

  void sayHello() {
    print("Hi my name is $name"); // this.name을 쓸 필요가 없음
    // 함수 안에서 생성된 name이라면 필요함.
  }
}

void main() {
  var nico = Player(name: 'nico', xp: 1200, team: Team.blue);
  // 예시
  var nico2 = Player(name: 'nico', xp: 1200, team: Team.red)
    ..name = 'las'
    ..xp = 12000
    ..team = Team.blue;

  var potat = nico
    // 해당 오퍼레이터로 파라미터값을 바꿀 수 있음
    ..name = 'las'
    ..xp = 12000
    ..team = Team.red
    ..sayHello();
}
