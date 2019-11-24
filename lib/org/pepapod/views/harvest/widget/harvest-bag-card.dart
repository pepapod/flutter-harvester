import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_harvester/org/pepapod/model/Bag.dart';

class BagCard extends StatelessWidget {
  final Bag bag;

  const BagCard({Key key, this.bag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: _buildCard(),
    );
  }

  Widget _buildCard() {
    return Row(
      children: <Widget>[
        _buildInfoColumn(),
        _buildPhotoColumn(),
      ],
    );
  }

  Widget _buildInfoColumn() {
    return Column(
      children: <Widget>[_buildTitle(), _buildCollectorName()],
    );
  }

  Widget _buildTitle() {
    return Text(
      'Bag ID: ${bag.bagId}',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    );
  }

  Widget _buildPhotoColumn() {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
      fit: BoxFit.contain,
      image: new NetworkImage(
          "http://1.bp.blogspot.com/-xu6uND7dq2w/VkI0thzi0LI/AAAAAAAAALs/VGnwrATcmXI/s1600/tabaquillo-02.jpg"),
    )));
  }

  Widget _buildCollectorName() {
    return Text(
      'Recolector: ${bag.collectorName}',
      style: TextStyle(fontSize: 20),
    );
  }
}
