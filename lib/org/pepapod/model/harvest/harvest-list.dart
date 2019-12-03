import 'package:flutter_harvester/org/pepapod/model/harvest/Harvest.dart';
import 'package:flutter_harvester/org/pepapod/persistance/db-document.dart';

class HarvestList implements DBDocument {
  static const String KEY = "hlist";
  final List<Harvest> entries;

  HarvestList(this.entries);

  void add(Harvest harvest) {
    entries?.add(harvest);
  }

  @override
  String key() {
    return KEY;
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "entries": entries.map((e) => e.toJson()).toList(),
    };
  }

  factory HarvestList.fromJson(Map<String, dynamic> json) {
    return HarvestList((json['entries'] as List)
        .map((entry) => Harvest.fromJson(entry))
        .toList());
  }

  factory HarvestList.empty() {
    return HarvestList([]);
  }
}
