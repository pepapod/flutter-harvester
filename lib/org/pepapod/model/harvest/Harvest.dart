import 'package:flutter_harvester/org/pepapod/model/Bag.dart';
import 'package:flutter_harvester/org/pepapod/persistance/db-document.dart';

class Harvest extends DBDocument {
  final String harvestId;
  final String harvestDate;

  //final List<Bag> bagList;

  Harvest(this.harvestId, this.harvestDate);

  @override
  String key() {
    return harvestId;
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "harvestId": harvestId,
      "date": harvestDate,
      //"bagList": bagList,
    };
  }

  factory Harvest.fromJson(Map<String, dynamic> json) {
    String harvestId = json["harvestId"];
    String harvestDate = json["harvestDate"];
    return Harvest(harvestId, harvestDate);
  }
}
