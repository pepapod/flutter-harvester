
import 'package:flutter_harvester/org/pepapod/persistance/db-document.dart';

class Bag extends DBDocument{

  final String collectorName;
  final String bagId;

  Bag(this.collectorName, this.bagId);

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