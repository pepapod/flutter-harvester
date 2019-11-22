import 'package:flutter_harvester/org/pepapod/services/services-factory.dart';

class DefaultServiceFactory extends ServiceFactory {
  static ServiceFactory _instance;

  DefaultServiceFactory._();

  factory DefaultServiceFactory.instance() {
    if (_instance == null) {
      _instance = DefaultServiceFactory._();
    }
    return _instance;
  }
}
