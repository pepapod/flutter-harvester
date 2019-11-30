import 'package:flutter_harvester/org/pepapod/model/Harvest.dart';

abstract class HarvestService {
  Future<void> saveHarvest(Harvest harvest);

  Future<Harvest> getHarvest(String key);
}
