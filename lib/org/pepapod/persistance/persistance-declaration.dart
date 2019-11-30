import 'package:flutter_harvester/org/pepapod/model/Harvest.dart';

abstract class HarvestPersistance {
  Future<Harvest> getHarvest(String key);

  Future<void> saveHarvests(Harvest harvest);
}
