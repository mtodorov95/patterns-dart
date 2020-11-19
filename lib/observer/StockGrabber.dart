import 'package:patterns/observer/Observer.dart';
import 'package:patterns/observer/Subject.dart';

class StockGrabber implements Subject {
  List<Observer> observers;

  double ibmPrice;
  double aaplPrice;
  double googPrice;

  StockGrabber() {
    observers = List<Observer>();
  }

  @override
  void register(Observer newObserver) {
    observers.add(newObserver);
  }

  @override
  void unregister(Observer deleteObserver) {
    int observerIndex = observers.indexOf(deleteObserver);
    print('Observer: ${observerIndex + 1} deleted');
    observers.removeAt(observerIndex);
  }

  @override
  void notifyObserver() {
    observers.forEach((Observer observer) {
      observer.update(ibmPrice, aaplPrice, googPrice);
    });
  }

  void setIBMPrice(double newPrice) {
    ibmPrice = newPrice;
    notifyObserver();
  }

  void setAAPLPrice(double newPrice) {
    aaplPrice = newPrice;
    notifyObserver();
  }

  void setGOOGPrice(double newPrice) {
    googPrice = newPrice;
    notifyObserver();
  }
}
