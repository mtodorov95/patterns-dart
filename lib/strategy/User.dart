import 'package:patterns/strategy/Code.dart';
import 'package:patterns/strategy/Person.dart';

class User extends Person {
  User() {
    this.codingType = CantCode();
  }
}
