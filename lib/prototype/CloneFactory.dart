import 'Car.dart';

// The factory is optional when using Prototype

class CloneFactory {
  Car getClone(Car sourceCar) {
    return sourceCar.makeCopy();
  }
}
