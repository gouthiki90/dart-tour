class Human {
  final String name;
  Human({required this.name});
  void sayHello() {
    print("Hi my name is $name");
  }
}

// Mixins 생성자가 없는 class
mixin Strong {
  final double strengthLevel = 1500.99;
}

mixin QuickRunner {
  void runQuick() {
    print("ruuuuuuun");
  }
}

mixin Tall {
  final double height = 1.99;
}

enum Team { red, blue }

// 상속이 아닌 다른 클래스가 가지고 있는 메소드와 프로퍼티를 가져옴.
class Player with Strong, QuickRunner, Tall {
  final Team team;

// super 생성자를 통해 상속된 Human의 name 파라미터에 접근할 수 있도록 함.
  Player({
    required this.team,
    // required String name,
  });

  // @override
  // void sayHello() {
  //   // 상속한 부모 클래스의 프로퍼티에 접근하게 하거나 메소드를 호출할 수 있게끔 함.
  //   print("and I play for ${team}");
  // }
}

// 재사용이 가능한 class와 프로퍼티
class Horse with Strong, QuickRunner {}

void main() {
  var player = Player(
    team: Team.red,
  );
  // with 지은 class의 프로퍼티를 가져올 수 있다.
  player.strengthLevel;
  // player.sayHello();
}
