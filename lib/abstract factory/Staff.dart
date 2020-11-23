import 'package:patterns/abstract%20factory/Weapon.dart';

class Staff implements Weapon {
  @override
  String damage() {
    return '8';
  }
}
