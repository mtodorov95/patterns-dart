import 'package:patterns/observer/StockGrabber.dart';
import 'package:patterns/observer/StockObserver.dart';

class ObserverExample {
  /*
    Use when you need many objects to receve 
    an update when another object changes
   */
  void run() {
    StockGrabber stockGrabber = StockGrabber();

    StockObserver observer1 = StockObserver(stockGrabber);

    stockGrabber.setIBMPrice(197.0);
    stockGrabber.setAAPLPrice(670.0);
    stockGrabber.setGOOGPrice(580.0);

    StockObserver observer2 = StockObserver(stockGrabber);

    stockGrabber.unregister(observer1);

    stockGrabber.setIBMPrice(194.0);
    stockGrabber.setAAPLPrice(673.0);
    stockGrabber.setGOOGPrice(582.0);
  }
}
