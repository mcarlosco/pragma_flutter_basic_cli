import '../../utils/checkers_util.dart';
import '../../utils/formatters_util.dart';

import 'geolocation_model.dart';

final class AddressModel {
  final String city;
  final String street;
  final int number;
  final String zipcode;
  final GeolocationModel geolocation;

  const AddressModel({
    required this.city,
    required this.street,
    required this.number,
    required this.zipcode,
    required this.geolocation,
  });

  AddressModel.from(Map<String, dynamic>? map)
      : this(
          city: checkStringOrDefault(map?['city']),
          street: checkStringOrDefault(map?['street']),
          number: checkIntOrDefault(map?['number']),
          zipcode: checkStringOrDefault(map?['zipcode']),
          geolocation: GeolocationModel.from(map?['geolocation']),
        );

  @override
  String toString() => '''
{
  city: "$city",
  street: "$street",
  number: $number,
  zipcode: "$zipcode",
  geolocation: ${formatPretty(geolocation.toString())},
}''';
}
