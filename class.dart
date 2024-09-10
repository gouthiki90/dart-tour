class Player {
  final String name = 'nico';
  int xp = 1500;

  void sayHello() {
    print("Hi my name is $name"); // this.name을 쓸 필요가 없음
    // 함수 안에서 생성된 name이라면 필요함.
  }
}

void main() {
  // class의 instance 생성
  var player = Player();
  print(player.name);
  // player.name = 'song'; final로 지정했기 때문에 오류가 생긴다.
  print(player.name);
}
