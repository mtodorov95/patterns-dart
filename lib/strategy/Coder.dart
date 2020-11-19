import 'package:patterns/strategy/Code.dart';
import 'package:patterns/strategy/Person.dart';

class Coder extends Person {
  Coder() {
    this.codingType = IsCoding();
  }
}
