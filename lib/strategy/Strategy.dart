import 'package:patterns/strategy/Code.dart';
import 'package:patterns/strategy/Coder.dart';
import 'package:patterns/strategy/Person.dart';
import 'package:patterns/strategy/User.dart';

/*
  Use when you need a class to use 
  one of several behaviours dynamically
 */
class Strategy {
  void run() {
    Person mark = User();
    Person john = Coder();

    print('User: ${mark.tryToCode()}');
    print('Coder: ${john.tryToCode()}');

    mark.codingType = IsCoding();

    print('User learns Dart and is ${mark.tryToCode()}');
  }
}
