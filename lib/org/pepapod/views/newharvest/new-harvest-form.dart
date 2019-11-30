import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_harvester/org/pepapod/model/Harvest.dart';

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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: RaisedButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    var harvest = Harvest('1234', harvestDate);
                    //store harvest? how to get harvest id? random?
                  }
                },
                child: Text('Submit'),
              ),
            ),
          ],
        ));
  }
}
