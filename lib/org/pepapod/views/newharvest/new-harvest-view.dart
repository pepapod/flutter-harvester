
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NewHarvestView extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: _buildBody(),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context, false),
        ));
  }

  Widget _buildBody() {
    return Container(
      child: Column(
        children: <Widget>[

        ],
      ),
    );
  }

}