
import 'package:flutter_harvester/org/pepapod/model/json/json-convertible.dart';

/// This is an interface all DB documents should implement
/// in a nonSQL db.
abstract class DBDocument extends JsonConvertible {
  String key();
}

