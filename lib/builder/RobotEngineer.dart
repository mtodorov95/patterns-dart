import 'package:patterns/builder/Robot.dart';
import 'package:patterns/builder/RobotBuilder.dart';

class RobotEngineer {
  RobotBuilder _robotBuilder;

  RobotEngineer(this._robotBuilder);

  Robot getRobot() {
    return _robotBuilder.getRobot();
  }

  void makeRobot() {
    _robotBuilder.buildRobotHead();
    _robotBuilder.buildRobotTorso();
    _robotBuilder.buildRobotArms();
    _robotBuilder.buildRobotLegs();
  }
}
