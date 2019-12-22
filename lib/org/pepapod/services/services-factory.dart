import 'package:flutter_harvester/org/pepapod/services/services-declaration.dart';

/// This interface is the one that declares all the
/// available services the application has
///
/// For now it can be only one interface for all the
/// services

abstract class ServiceFactory {
  HarvestService harvestService();
}
