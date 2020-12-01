import 'package:patterns/builder/Robot.dart';
import 'package:patterns/builder/RobotBuilder.dart';

class OldRobotBuilder implements RobotBuilder {
  Robot _robot;

  OldRobotBuilder() {
    _robot = Robot();
  }

  @override
  void buildRobotArms() {
    _robot.setRobotArms('Tin Arms');
  }

  @override
  void buildRobotHead() {
    _robot.setRobotHead('Tin Head');
  }

  @override
  void buildRobotLegs() {
    _robot.setRobotLegs('Roller Legs');
  }

  @override
  void buildRobotTorso() {
    _robot.setRobotTorso('Tin Torso');
  }

  @override
  Robot getRobot() {
    return _robot;
  }
}
