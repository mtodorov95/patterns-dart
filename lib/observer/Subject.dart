import 'package:patterns/observer/Observer.dart';

abstract class Subject {
  void register(Observer observer);
  void unregister(Observer observer);
  void notifyObserver();
}
