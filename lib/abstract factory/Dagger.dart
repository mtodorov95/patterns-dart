import 'package:patterns/abstract%20factory/Weapon.dart';

class Dagger implements Weapon {
  @override
  String damage() {
    return '12';
  }
}
