import 'package:flutter_harvester/org/pepapod/model/Harvest.dart';

import '../../../persistance/factory/default-persistance-factory.dart';
import '../../../persistance/persistance-declaration.dart';
import '../../exceptions/service-exception.dart';
import '../../services-declaration.dart';

class DefaultHarvestService implements HarvestService {

  static HarvestService _instance;

  DefaultHarvestService._internal();

  factory DefaultHarvestService.instance() {
    if (_instance == null) {
      _instance = DefaultHarvestService._internal();
    }
    return _instance;
  }

  @override
  Future<Harvest> getHarvest(String key) async {
    try {
      Harvest harvest = await _getPersistance().getHarvest(key);
      return harvest;
    } catch (e) {
      throw SevereException(e);
    }
  }

  @override
  Future<void> saveHarvest(Harvest harvest) async {
    try {
      await _getPersistance().saveHarvests(harvest);
    } catch (e) {
      throw SevereException(e);
    }
  }

  HarvestPersistance _getPersistance() {
    return DefaultPersistanceFactory.instance().harvestPersistance();
  }
}
