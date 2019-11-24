
import 'package:flutter_harvester/org/pepapod/model/Bag.dart';
import 'package:flutter_harvester/org/pepapod/persistance/db-document.dart';

class Harvest extends DBDocument{

  final String harvestId;
  final String date;
  final List<Bag> bagList;

  Harvest(this.harvestId, this.date, this.bagList);

  @override
  String key() {
    // TODO: implement key
    return null;
  }

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    return null;
  }


}