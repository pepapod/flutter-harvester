import 'package:flutter_harvester/org/pepapod/model/harvest/Harvest.dart';
import 'package:flutter_harvester/org/pepapod/model/harvest/harvest-list.dart';

abstract class HarvestPersistance {
  Future<HarvestList> getHarvestList();

  Future<void> saveHarvests(HarvestList harvestList);
}
