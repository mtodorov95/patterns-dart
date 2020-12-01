import 'package:patterns/builder/RobotPlan.dart';

class Robot implements RobotPlan {
  String _robotHead;
  String _robotTorso;
  String _robotArms;
  String _robotLegs;

  String get head => _robotHead;
  String get torso => _robotTorso;
  String get arms => _robotArms;
  String get legs => _robotLegs;

  @override
  void setRobotArms(String arms) {
    _robotArms = arms;
  }

  @override
  void setRobotHead(String head) {
    _robotHead = head;
  }

  @override
  void setRobotLegs(String legs) {
    _robotLegs = legs;
  }

  @override
  void setRobotTorso(String torso) {
    _robotTorso = torso;
  }
}
