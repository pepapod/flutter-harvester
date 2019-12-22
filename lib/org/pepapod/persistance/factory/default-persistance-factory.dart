import 'package:flutter_harvester/org/pepapod/persistance/harvester/harvest/sembast-harvest-persistance.dart';
import 'package:flutter_harvester/org/pepapod/persistance/persistance-factory.dart';

import '../persistance-declaration.dart';

class DefaultPersistanceFactory implements PersistanceFactory {
  static PersistanceFactory _instance;

  DefaultPersistanceFactory._internal();

  factory DefaultPersistanceFactory.instance() {
    if (_instance == null) {
      _instance = DefaultPersistanceFactory._internal();
    }
    return _instance;
  }

  @override
  HarvestPersistance harvestPersistance() {
    return SembastHarvestPersistance.instance();
  }
}
