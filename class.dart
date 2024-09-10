class Player {
  final String name; // 나중에 값을 받을 거라는 late
  int xp;

  // 생성자
  // class에서 이미 타입을 지정해뒀기 때문에 생성자에서 타입을 다시 지정할 필요가 없다.
  Player(this.name, this.xp);
  // Player(String name, int xp) {
  //   this.name = name;
  //   this.xp = xp;
  // }

  void sayHello() {
    print("Hi my name is $name"); // this.name을 쓸 필요가 없음
    // 함수 안에서 생성된 name이라면 필요함.
  }
}

void main() {
  // class의 instance 생성
  var player = Player("nico", 1500);
  player.sayHello();
  var player2 = Player("fine", 1600);
  player2.sayHello();
  // player.name = 'song'; final로 지정했기 때문에 오류가 생긴다.
  // print(player2.name);
}
