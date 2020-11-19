import 'package:patterns/strategy/Code.dart';

class Person {
  Code _codingType;

  void set codingType(Code newType) {
    _codingType = newType;
  }

  String tryToCode() {
    return _codingType.code();
  }
}
