import 'package:patterns/abstract%20factory/BanditFactory.dart';
import 'package:patterns/abstract%20factory/Enemy.dart';

class Bandit extends Enemy {
  BanditFactory banditFactory;

  Bandit(this.banditFactory);

  @override
  void make() {
    print('Spawning enemy: $name');
    weapon = banditFactory.equipWeapon();
    armor = banditFactory.equipArmor();
  }
}
