class Player {
  final String name; // 나중에 값을 받을 거라는 late
  int xp, age; // 함께 지정 가능
  String team;

  // 생성자
  // class에서 이미 타입을 지정해뒀기 때문에 생성자에서 타입을 다시 지정할 필요가 없다.
  // named constructor
  Player(
      {required this.name,
      required this.xp,
      required this.team,
      required this.age});
  // Player(String name, int xp) {
  //   this.name = name;
  //   this.xp = xp;
  // }

// 임의로 지정한 파라미터 값을 지정값으로 초기화하는 생성자
// 콜론을 통해서 초기화를 하겠다고 선언함
// 네임드 생성자
  Player.createBluePlayer({
    required String name,
    required int age,
  })  : this.age = age,
        this.name = name,
        this.team = 'blue',
        this.xp = 0;

  // 포지셔널 생성자
  Player.createRedPlayer(String name, int age)
      : this.age = age,
        this.name = name,
        this.team = 'red',
        this.xp = 0;

  void sayHello() {
    print("Hi my name is $name"); // this.name을 쓸 필요가 없음
    // 함수 안에서 생성된 name이라면 필요함.
  }
}

void main() {
  // class의 instance 생성
  // flutter에선 해당 방식이 더 많다.
  var player = Player.createBluePlayer(
    name: 'nico',
    age: 21,
  );
  player.sayHello();
  var player2 = Player.createRedPlayer(
    'lynn',
    21,
  );
  player2.sayHello();
  // player.name = 'song'; final로 지정했기 때문에 오류가 생긴다.
  // print(player2.name);

  // 너무 많은 positional argument가 있으면 각 가지고 있는 파라미터가 무엇인지 알기 어렵다.
  // 따라서 named constructor parameter를 사용한다.
}
