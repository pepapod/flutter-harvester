import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HarvestGeneralTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildDateRow(),
        _buildSpecieRow(),
        _buildZoneRow(),
      ],
    );
  }

  Widget _buildDateRow() {
    return Row(
      children: <Widget>[
        IconButton(icon: Icon(Icons.event)),
        Text(DateTime.now().toIso8601String())
      ],
    );
  }

  Widget _buildSpecieRow() {
    return Row(
      children: <Widget>[
        IconButton(icon: Icon(Icons.filter_vintage)),
        Text('Tabaquillo (Polylepis australis)')
      ],
    );
  }

  Widget _buildZoneRow() {
    return Row(
      children: <Widget>[
        IconButton(icon: Icon(Icons.gps_fixed)),
        Text('2313213123 , 12323213')
      ],
    );
  }
}
