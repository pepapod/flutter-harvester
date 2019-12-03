import 'package:flutter_harvester/org/pepapod/model/Harvest.dart';
import 'package:flutter_harvester/org/pepapod/model/HarvestList.dart';

abstract class HarvestPersistance {
  Future<HarvestList> getHarvestList();

  Future<void> saveHarvests(Harvest harvest);
}
