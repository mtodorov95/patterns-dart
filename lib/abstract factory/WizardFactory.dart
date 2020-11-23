import 'package:patterns/abstract%20factory/EnemyFactory.dart';
import 'package:patterns/abstract%20factory/Robes.dart';
import 'package:patterns/abstract%20factory/Staff.dart';

class WizardFactory implements EnemyFactory {
  @override
  equipArmor() {
    return Robes();
  }

  @override
  equipWeapon() {
    return Staff();
  }
}
