class Human {
  final String name;
  Human({required this.name});
  void sayHello() {
    print("Hi my name is $name");
  }
}

enum Team { red, blue }

class Player extends Human {
  final Team team;

// super 생성자를 통해 상속된 Human의 name 파라미터에 접근할 수 있도록 함.
  Player({
    required this.team,
    required String name,
  }) : super(name: name);

  @override
  void sayHello() {
    // 상속한 부모 클래스의 프로퍼티에 접근하게 하거나 메소드를 호출할 수 있게끔 함.
    super.sayHello();
    print("and I play for ${team}");
  }
}

void main() {
  var player = Player(
    team: Team.red,
    name: 'nico',
  );
  player.sayHello();
}
