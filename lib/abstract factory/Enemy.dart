import 'package:patterns/abstract%20factory/Armor.dart';
import 'package:patterns/abstract%20factory/Weapon.dart';

abstract class Enemy {
  String _name;
  String get name => _name;
  void set name(String newName) {
    _name = newName;
  }

  Weapon weapon;
  Armor armor;

  void make();

  void engagePlayer() {
    print('$name is engaging the player');
  }

  void display() {
    print('$name is on the screen');
  }

  void attack() {
    print('$name attacks for ${weapon.damage()} DMG');
  }

  String info() {
    String info =
        'The $name has ${armor.defence()} defence and does ${weapon.damage()} damage\n';
    return info;
  }
}
