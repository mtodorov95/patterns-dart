import 'package:patterns/abstract%20factory/Enemy.dart';
import 'package:patterns/abstract%20factory/EnemySpawner.dart';
import 'package:patterns/abstract%20factory/HumanoidEnemySpawner.dart';

class AbstractFactoryExample {
  /* 
  Imagine the factory pattern but
  everything is abstracted
  */
  void run() {
    EnemySpawner spawner = HumanoidEnemySpawner();

    Enemy bandit = spawner.spawn('Bandit');
    print(bandit.info());

    Enemy wizard = spawner.spawn('Wizard');
    print(wizard.info());
  }
}
