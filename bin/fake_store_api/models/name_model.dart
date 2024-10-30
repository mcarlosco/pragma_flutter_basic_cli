import '../../utils/checkers_util.dart';

final class NameModel {
  final String firstname;
  final String lastname;

  const NameModel({
    required this.firstname,
    required this.lastname,
  });

  NameModel.from(Map<String, dynamic>? map)
      : this(
          firstname: checkStringOrDefault(map?['firstname']),
          lastname: checkStringOrDefault(map?['lastname']),
        );

  @override
  String toString() => '''
{
  firstname: "$firstname",
  lastname: "$lastname",
}''';
}
