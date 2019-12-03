import 'package:flutter_harvester/org/pepapod/model/harvest/Harvest.dart';

abstract class HarvestService {
  Future<void> saveHarvest(Harvest harvest);

  Future<List<Harvest>> getHarvest();
}
