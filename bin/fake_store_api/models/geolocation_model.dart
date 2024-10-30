import '../../utils/checkers_util.dart';

final class GeolocationModel {
  final String lat;
  final String long;

  const GeolocationModel({
    required this.lat,
    required this.long,
  });

  GeolocationModel.from(Map<String, dynamic>? map)
      : this(
          lat: checkStringOrDefault(map?['lat']),
          long: checkStringOrDefault(map?['long']),
        );

  @override
  String toString() => '''
{
  lat: "$lat",
  long: "$long",
}''';
}
