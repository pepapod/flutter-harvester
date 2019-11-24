import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HarvestResultTabView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HarvestResultTabState();
}

class _HarvestResultTabState extends State<HarvestResultTabView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildFilterBar(),
      body: Column(
        children: <Widget>[
          //TODO: implement results
          Text('We will show results')
        ],
      ),
    );
  }

  Widget _buildFilterBar() {
    return AppBar(
      title: Text('filter results'),
      backgroundColor: Colors.white,
    );
  }
}
