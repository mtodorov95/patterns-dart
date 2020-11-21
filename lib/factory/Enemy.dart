abstract class Enemy {
  String _name;
  double _damage;

  String get name => _name;
  void set name(String newName) {
    _name = newName;
  }

  double get damage => _damage;
  void set damage(double newDamage) {
    _damage = newDamage;
  }

  void engagePlayer() {
    print('$name is engaging the player');
  }

  void display() {
    print('$name is on the screen');
  }

  void attack() {
    print('$name attacks and does $damage Damage');
  }
}
