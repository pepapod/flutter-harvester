import 'package:flutter/material.dart';
import 'package:flutter_harvester/org/pepapod/theme/harvester-theme.dart';
import 'package:flutter_harvester/org/pepapod/views/harvest/harvest-view.dart';
import 'package:flutter_harvester/org/pepapod/views/home/harvester-home.dart';

class HarvesterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Harvestor',
      theme: HarvesterTheme.theme,
      home: HarvestView(),
    );
  }
}
