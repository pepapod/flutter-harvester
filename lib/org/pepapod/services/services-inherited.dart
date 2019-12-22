import 'package:flutter/material.dart';
import 'package:flutter_harvester/org/pepapod/persistance/factory/default-persistance-factory.dart';
import 'package:flutter_harvester/org/pepapod/services/services-declaration.dart';

import 'services-factory.dart';


/// This class is the one used for passing the services factory
/// to all the widget tree.
///
/// We can switch this approach to a Provider one
///
/// This class is instantiated in the main.dart file, and from there
/// it gets distributed to all widgets being accessible like:
///
/// Services.of(context)
///
///
class Services extends InheritedWidget implements ServiceFactory {
  final ServiceFactory _serviceFactory;

  const Services({Key key, @required ServiceFactory factory, @required Widget child})
      : assert(factory != null),
        assert(child != null),
        this._serviceFactory = factory,
        super(key: key, child: child);

  static Services of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(Services);
  }

  ServiceFactory factory() {
    return _serviceFactory;
  }

  @override
  bool updateShouldNotify(Services oldWidget) {
    return this.factory().runtimeType == this.factory().runtimeType;
  }

  @override
  HarvestService harvestService() {
    return _serviceFactory.harvestService();
  }
}
