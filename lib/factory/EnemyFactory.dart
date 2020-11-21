import 'package:patterns/factory/ArchWizard.dart';
import 'package:patterns/factory/Enemy.dart';
import 'package:patterns/factory/Bandit.dart';
import 'package:patterns/factory/Wizard.dart';

class EnemyFactory {
  Enemy makeEnemy(String type) {
    if (type == 'W') {
      return Wizard();
    } else if (type == 'A') {
      return ArchWizard();
    } else if (type == 'B') {
      return Bandit();
    } else {
      return null;
    }
  }
}
