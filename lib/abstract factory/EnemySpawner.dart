import 'package:patterns/abstract%20factory/Enemy.dart';

abstract class EnemySpawner {
  Enemy makeEnemy(String type);

  Enemy spawn(String type) {
    Enemy enemy = makeEnemy(type);

    enemy.make();
    enemy.display();
    enemy.engagePlayer();
    enemy.attack();

    return enemy;
  }
}
