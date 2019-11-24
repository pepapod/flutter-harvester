import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_harvester/org/pepapod/model/Bag.dart';
import 'package:flutter_harvester/org/pepapod/model/Harvest.dart';
import 'package:flutter_harvester/org/pepapod/views/harvest/widget/harvest-bag-card.dart';

class HarvestBagsTabView extends StatelessWidget {

  final List<Bag> bagList;

  const HarvestBagsTabView({Key key, this.bagList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildBagList(context);
  }

  Widget _buildBagList(BuildContext context) {
    return ListView.builder(
        itemCount: bagList.length,
        itemBuilder: (context, index) {
          return BagCard(bag: bagList[index]);
        });
  }
}
