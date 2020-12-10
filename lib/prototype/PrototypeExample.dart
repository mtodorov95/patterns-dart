import 'BMW.dart';
import 'CloneFactory.dart';

class PrototypeExample {
  /*
    Used to create new instances of objects by cloning other objects
    Reduces the need for subclasses
   */
  void run() {
    CloneFactory carFactory = CloneFactory();

    BMW ogCar = BMW();
    BMW cloneCar = carFactory.getClone(ogCar);

    print('OG hash is ${ogCar.hashCode}');
    print('OG hash is ${cloneCar.hashCode}');

    print(ogCar.cloneStatus);
    print(cloneCar.cloneStatus);
  }
}
