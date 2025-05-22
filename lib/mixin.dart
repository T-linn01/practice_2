enum RobotType {cleaner, cook, guard, scout,multibot}
//guard: bảo vệ
//socut: bay để giám sát

abstract class Robot {
  String id;
  RobotType type;
  Robot(this.id, this.type);
  void performTask();
}

mixin CanClean {
  void clean() => print('Dọn dẹp');
}

mixin CanCook {
  void cook() => print('Nấu ăn');
}


mixin CanGuard {
  void guard() => print('Đi kiểm tra') ;
}


mixin CanFly {
  void fly() => print('Bay lên');
}


class CleanerBot extends Robot with CanClean {
  CleanerBot(String id) : super(id, RobotType.cleaner);
  @override
  void performTask() {
    print('$id đang dọn dẹp');
    clean();
  }
}

class ChefBot extends Robot with CanCook {
  ChefBot(String id) : super(id, RobotType.cook);
  @override
  void performTask() {
    print('$id đang nấu ăn');
    cook();
  }
}

class SecurityBot extends Robot with CanGuard {
  SecurityBot(String id) : super(id, RobotType.guard);
  @override
  void performTask() {
    print('$id đang đi kiểm tra');
    guard();
  }
}

class ScoutDrone extends Robot with CanFly, CanGuard {
  ScoutDrone(String id) : super(id, RobotType.scout);
  @override
  void performTask() {
    print('$id vừa bay vừa kiểm tra xung quanh');
    fly();
    guard();
  }
}

class MultiBot extends Robot with CanClean, CanCook, CanGuard {
  MultiBot(String id) : super(id, RobotType.multibot);
  @override
  void performTask() {
    print('$id có thể dọn dẹp, nấu ăn và kiểm tra mọi thứ.');
    clean();
    cook();
    guard();
  }
}

class RobotManager {
  List<Robot> robots = [];
  void addRobot(Robot r) {
    robots.add(r);
    print('Đã thêm robot: ${r.id}');
  }
  void showAllRobots(){
    print('\nDanh sách các Robot đang có');
    for(var r in robots) {
      print('  ${r.id} - ${r.type}');

      if (r is CanClean) {
        print('    → Có thể dọn dẹp.');
      }
      if (r is CanCook) {
        print('    → Có thể nấu ăn.');
      }
      if (r is CanFly) {
        print('    → Có thể bay.');
      }
      if (r is CanGuard) {
        print('    → Trách nhiệm bảo vệ.');
      }
    }
  }
  void runCleaningBots() {
    for (var r in robots) {
      if ( r is CanClean) {
        print('\n ${r.id} dọn sạch sẽ.');
        (r as CanClean).clean();
      }
    }
  }
  void runCookingBots() {
    for (var r in robots) {
      if ( r is CanCook) {
        print('\n ${r.id} nấu đồ ăn.');
        (r as CanCook).cook();
      }
    }
  }
  void runFlyingBots() {
    for (var r in robots) {
      if ( r is CanFly) {
        print('\n ${r.id} bay đi.');
        (r as CanFly).fly();
      }
    }
  }
  void runSecurityBots() {
    for (var r in robots) {
      if ( r is CanGuard) {
        print('\n${r.id} đi kiểm tra xung quanh.');
        (r as CanGuard).guard();
      }
    }
  }
}

void main(){
  var bot1 = CleanerBot('R1');
  var bot2 = ChefBot('C1');
  var bot3 = ScoutDrone('D1');
  var bot4 = MultiBot('M1');

  var manager = RobotManager();
  manager.addRobot(bot1);
  manager.addRobot(bot2);
  manager.addRobot(bot3);
  manager.addRobot(bot4);

  manager.showAllRobots();
  manager.runCleaningBots();
  manager.runCookingBots();
  manager.runFlyingBots();
  manager.runSecurityBots();

}