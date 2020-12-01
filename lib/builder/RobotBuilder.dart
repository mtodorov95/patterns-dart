import 'package:patterns/builder/Robot.dart';

abstract class RobotBuilder {
  void buildRobotHead();
  void buildRobotTorso();
  void buildRobotArms();
  void buildRobotLegs();
  Robot getRobot();
}
