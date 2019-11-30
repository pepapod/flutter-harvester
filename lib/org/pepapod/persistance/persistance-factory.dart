import 'persistance-declaration.dart';

/// This interface is the one that declares all the
/// available persistances the application has
///
/// For now it can be only one interface for all the
/// persistances

abstract class PersistanceFactory {
  /// An example method here could be:
  ///
  /// UserProfilePersistance userProfilePersistance();
  ///
  ///

  HarvestPersistance harvestPersistance();

}
