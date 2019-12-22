import 'package:flutter/material.dart';
import 'package:flutter_harvester/org/pepapod/views/newharvest/new-harvest-view.dart';

class HarvesterHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildHomeAppBar(),
      body: _getHomeBody(context),
    );
  }

  Widget _buildHomeAppBar() {
    return AppBar(
      title: Text(
        "Harvester Home",
      ),
    );
  }

  Widget _getHomeBody(BuildContext context) {
    return Scaffold(
      floatingActionButton: _buildNewHarvestButton(context),
    );
  }

  Widget _buildNewHarvestButton(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add, color: Colors.white),
      onPressed: () => newHarvest(context),
    );
  }

  void newHarvest(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (ctx) => NewHarvestView()));
  }
}
