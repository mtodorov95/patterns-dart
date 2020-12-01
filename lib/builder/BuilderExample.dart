import 'package:patterns/builder/OldRobotBuilder.dart';
import 'package:patterns/builder/Robot.dart';
import 'package:patterns/builder/RobotBuilder.dart';
import 'package:patterns/builder/RobotEngineer.dart';

class BuilderExample {
  /*
  Used to create objects from other objects
  Hides the creation of the parts
  Create a new builder for every new version of the object
   */
  void run() {
    RobotBuilder oldStyleBuilder = OldRobotBuilder();

    RobotEngineer robotEngineer = RobotEngineer(oldStyleBuilder);

    robotEngineer.makeRobot();

    Robot firstBot = robotEngineer.getRobot();

    print(
        'Robot Built:\nHead: ${firstBot.head}\nTorso: ${firstBot.torso}\nArms: ${firstBot.arms}\nLegs: ${firstBot.legs}\n');
  }
}
