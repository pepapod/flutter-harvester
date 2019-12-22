import 'package:flutter_harvester/org/pepapod/model/harvest/Harvest.dart';
import 'package:flutter_harvester/org/pepapod/model/harvest/harvest-list.dart';

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
  Future<List<Harvest>> getHarvest() async {
    try {
      HarvestList harvestList = await _getPersistance().getHarvestList();
      return harvestList != null ? harvestList.entries : [];
    } catch (e) {
      throw SevereException(e);
    }
  }

  @override
  Future<void> saveHarvest(Harvest harvest) async {
    try {
      var harvestList = await _getPersistance().getHarvestList();
      if (harvestList == null) {
        harvestList = HarvestList.empty();
      }
      harvestList.add(harvest);
      await _getPersistance().saveHarvests(harvestList);
    } catch (e) {
      throw SevereException(e);
    }
  }

  HarvestPersistance _getPersistance() {
    return DefaultPersistanceFactory.instance().harvestPersistance();
  }
}
