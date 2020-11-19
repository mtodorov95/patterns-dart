import 'package:patterns/observer/Observer.dart';
import 'package:patterns/observer/Subject.dart';

class StockObserver implements Observer {
  double _ibmPrice;
  double _aaplPrice;
  double _googPrice;

  static int observerID = 0;

  int _observerID;

  Subject _stockGrabber;

  StockObserver(this._stockGrabber) {
    _observerID = ++observerID;
    print('New Observer $_observerID');
    _stockGrabber.register(this);
  }

  @override
  void update(double ibmPrice, double aaplPrice, double googPrice) {
    _ibmPrice = ibmPrice;
    _aaplPrice = aaplPrice;
    _googPrice = googPrice;

    printPrices();
  }

  void printPrices() {
    print(
        '$_observerID\nIBM: $_ibmPrice\nAAPL: $_aaplPrice\nGOOG: $_googPrice');
  }
}
