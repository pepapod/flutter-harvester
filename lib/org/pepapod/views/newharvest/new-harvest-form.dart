import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_harvester/org/pepapod/model/harvest/Harvest.dart';
import 'package:flutter_harvester/org/pepapod/services/services-inherited.dart';

class NewHarvestForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NewHarvestFormState();
  }
}

class NewHarvestFormState extends State<NewHarvestForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var harvestDate;
    var harvestTree;
    return Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              harvestDate = value;
              return null;
            }),
            TextFormField(validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              harvestTree = value;
              return null;
            }),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: RaisedButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    _saveHarvest(harvestDate, harvestTree);
                  }
                },
                child: Text('Submit'),
              ),
            ),
          ],
        ));
  }

  void _saveHarvest(String harvestDate, String harvestTree) async {
    var harvest =
        Harvest(harvestDate.toString(), DateTime.now().toIso8601String());
    await Services.of(context).harvestService().saveHarvest(harvest);
    Navigator.of(context).pop();
  }
}
