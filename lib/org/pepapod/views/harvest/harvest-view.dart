import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_harvester/org/pepapod/model/Bag.dart';
import 'package:flutter_harvester/org/pepapod/views/harvest/tabview/harvest-bags-tabview.dart';
import 'package:flutter_harvester/org/pepapod/views/harvest/tabview/harvest-general-tabview.dart';
import 'package:flutter_harvester/org/pepapod/views/harvest/tabview/harvest-result-tabview.dart';

class HarvestView extends StatelessWidget {

  final List<Bag> myBags = <Bag>[
    Bag('Julian', '12345'),
    Bag('Fragancia', '5556'),
    Bag('Julian', '55544')
  ];

  @override
  Widget build(BuildContext context) {
    return _buildTopTabBar(context);
  }

  Widget _buildTopTabBar(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: _buildAppBar(context),
          body: TabBarView(
            children: <Widget>[
              _buildGeneralTabBarView(),
              _buildBagsTabBarView(),
              _buildResultsTabBarView()
            ],
          ),
        ));
  }

  Widget _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: true,
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.black),
        onPressed: () => Navigator.pop(context, false),
      ),
      bottom: _buildTabBar(),
    );
  }

  Widget _buildTabBar() {
    return TabBar(
      tabs: <Widget>[_buildGeneralTab(), _buildBagsTab(), _buildResultsTab()],
    );
  }

  Widget _buildGeneralTab() {
    return Tab(
      child: Text(
        'General',
        style: TextStyle(color: Colors.black),
      ),
    );
  }

  Widget _buildBagsTab() {
    return Tab(
      child: Text(
        'Bags',
        style: TextStyle(color: Colors.black),
      ),
    );
  }

  Widget _buildResultsTab() {
    return Tab(
      child: Text(
        'Resultados',
        style: TextStyle(color: Colors.black),
      ),
    );
  }

  Widget _buildGeneralTabBarView() {
    return HarvestGeneralTabView(
    );
  }

  Widget _buildBagsTabBarView() {
    return HarvestBagsTabView(
      bagList: myBags,
    );
  }

  Widget _buildResultsTabBarView() {
    return HarvestResultTabView(
    );
  }
}
