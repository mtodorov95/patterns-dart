import 'Car.dart';

class BMW implements Car {
  int _hashCode;
  bool isClone = false;
  String get cloneStatus => isClone ? 'Is a clone of ${_hashCode}' : 'Is an OG';

  BMW() {
    print('Original object made');
  }

  BMW.fromSource(BMW source) {
    _hashCode = source.hashCode;
    isClone = true;
  }

  @override
  Car makeCopy() {
    print('Clone is being made');
    BMW bmwObject = BMW.fromSource(this);
    return bmwObject;
  }
}
