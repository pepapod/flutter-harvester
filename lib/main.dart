import 'package:flutter/material.dart';

import 'org/pepapod/services/factory/default-factory.dart';
import 'org/pepapod/services/services-inherited.dart';
import 'org/pepapod/views/app/harvester-app.dart';

void main() async {
  var appWithServices = Services(
    factory: DefaultServiceFactory.instance(),
    child: HarvesterApp(),
  );

  runApp(appWithServices);
}
