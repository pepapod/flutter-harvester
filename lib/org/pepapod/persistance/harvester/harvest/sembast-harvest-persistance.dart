import 'dart:developer';

import 'package:flutter_harvester/org/pepapod/model/harvest/Harvest.dart';
import 'package:flutter_harvester/org/pepapod/model/harvest/harvest-list.dart';
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
  Future<HarvestList> getHarvestList() async {
    HarvestList harvestList;
    try {
      var sembastDBClient = SembastDBClient.instance();
      var harvestListJson = await sembastDBClient.get(HarvestList.KEY);
      if (harvestListJson != null) {
        harvestList = HarvestList.fromJson(harvestListJson);
      }
    } catch (e) {
      log(e);
    }

    return harvestList;
  }

  @override
  Future<void> saveHarvests(HarvestList harvestList) async {
    try {
      var sembastDBClient = SembastDBClient.instance();
      await sembastDBClient.put(harvestList);
    } catch (e) {
      log(e);
    }
  }
}
