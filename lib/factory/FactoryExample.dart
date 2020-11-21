import 'dart:io';
import 'package:patterns/factory/Enemy.dart';
import 'package:patterns/factory/EnemyFactory.dart';

class FactoryExample {
  /*
  Use when a method has to return one of several classes
  that share a common superclass i.e. 
  Let's you choose related classes at runtime.
   */

  void run() {
    EnemyFactory enemyFactory = EnemyFactory();

    Enemy enemy = null;

    print('What type of enemy? (W / A / B)');
    String input = stdin.readLineSync();

    enemy = enemyFactory.makeEnemy(input);

    if (enemy != null) {
      _doStuff(enemy);
    }
  }

  void _doStuff(Enemy enemy) {
    enemy.display();
    enemy.engagePlayer();
    enemy.attack();
  }
}
