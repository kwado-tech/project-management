import 'package:meta/meta.dart';

class Zone {
  final String zoneId;
  final String title;
  final String description;
  final dynamic created;
  final dynamic lastUpdate;

  Zone(
      {@required this.zoneId,
      @required this.title,
      @required this.description,
      @required this.created,
      @required this.lastUpdate});
}
