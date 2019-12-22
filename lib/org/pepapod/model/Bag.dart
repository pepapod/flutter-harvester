
import 'package:flutter_harvester/org/pepapod/persistance/db-document.dart';

class Bag extends DBDocument{

  final String collectorName;
  final String bagId;
  final String imagePath;

  Bag(this.collectorName, this.bagId, this.imagePath);

  @override
  String key() {
    return bagId;
  }


  @override
  Map<String, dynamic> toJson() {
    return {
      "bagId": bagId,
      "collectorName": collectorName,
      "imagePath": imagePath,
    };
  }

}