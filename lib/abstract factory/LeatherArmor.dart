import 'package:patterns/abstract%20factory/Armor.dart';

class LeatherArmor implements Armor {
  @override
  String defence() {
    return '10';
  }
}
