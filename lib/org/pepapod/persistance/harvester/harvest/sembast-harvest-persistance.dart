import 'dart:developer';

import 'package:flutter_harvester/org/pepapod/model/Harvest.dart';
import 'package:flutter_harvester/org/pepapod/persistance/clients/sembast-db-client.dart';

import '../../persistance-declaration.dart';

class SembastHarvestPersistance implements HarvestPersistance {
  static HarvestPersistance _instance;

  SembastHarvestPersistance._internal();

  factory SembastHarvestPersistance.instance() {
    if (_instance == null) {
      _instance = SembastHarvestPersistance._internal();
    }
    return _instance;
  }

  @override
  Future<Harvest> getHarvest(String key) async {
    Harvest harvest;
    try {
      var sembastDBClient = SembastDBClient.instance();
      var harvestJson = await sembastDBClient.get(key);
      if (harvestJson != null) {
        harvest = Harvest.fromJson(harvestJson);
      }
    } catch (e) {
      log(e);
    }

    return harvest;
  }

  @override
  Future<void> saveHarvests(Harvest harvest) async {
    try {
      var sembastDBClient = SembastDBClient.instance();
      await sembastDBClient.put(harvest);
    } catch (e) {
      log(e);
    }
  }
}
