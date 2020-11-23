import 'package:patterns/abstract%20factory/Enemy.dart';
import 'package:patterns/abstract%20factory/EnemyFactory.dart';

class Wizard extends Enemy {
  EnemyFactory enemyFactory;

  Wizard(this.enemyFactory);

  @override
  void make() {
    print('Spawning enemy: $name');
    weapon = enemyFactory.equipWeapon();
    armor = enemyFactory.equipArmor();
  }
}
