import 'package:patterns/abstract%20factory/Bandit.dart';
import 'package:patterns/abstract%20factory/BanditFactory.dart';
import 'package:patterns/abstract%20factory/Enemy.dart';
import 'package:patterns/abstract%20factory/EnemyFactory.dart';
import 'package:patterns/abstract%20factory/EnemySpawner.dart';
import 'package:patterns/abstract%20factory/Wizard.dart';
import 'package:patterns/abstract%20factory/WizardFactory.dart';

class HumanoidEnemySpawner extends EnemySpawner {
  @override
  Enemy makeEnemy(String type) {
    Enemy enemy = null;
    if (type == 'Bandit') {
      EnemyFactory enemyFactory = BanditFactory();
      enemy = Bandit(enemyFactory);
      enemy.name = 'Bandit';
    } else if (type == 'Wizard') {
      EnemyFactory enemyFactory = WizardFactory();
      enemy = Wizard(enemyFactory);
      enemy.name = 'Wizard';
    }
    return enemy;
  }
}
