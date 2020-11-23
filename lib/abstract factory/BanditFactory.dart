import 'package:patterns/abstract%20factory/Dagger.dart';
import 'package:patterns/abstract%20factory/EnemyFactory.dart';
import 'package:patterns/abstract%20factory/LeatherArmor.dart';

class BanditFactory implements EnemyFactory {
  @override
  equipArmor() {
    return LeatherArmor();
  }

  @override
  equipWeapon() {
    return Dagger();
  }
}
