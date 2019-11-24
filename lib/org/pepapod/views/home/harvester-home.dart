import 'package:flutter/material.dart';

class HarvesterHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildHomeAppBar(),
      body: _getHomeBody(),
    );
  }

  Widget _buildHomeAppBar() {
    return AppBar(
      title: Text(
        "Harvester Home",
      ),
    );
  }

  Widget _getHomeBody() {
    return Container(
      child: Center(
        child: Text(
          "Home Body",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
