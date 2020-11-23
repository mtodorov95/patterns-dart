import 'package:patterns/abstract%20factory/Armor.dart';
import 'package:patterns/abstract%20factory/Weapon.dart';

abstract class EnemyFactory {
  Weapon equipWeapon();
  Armor equipArmor();
}
