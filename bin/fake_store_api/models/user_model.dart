import '../../utils/checkers_util.dart';
import '../../utils/formatters_util.dart';

import 'address_model.dart';
import 'name_model.dart';

final class UserModel {
  final int id;
  final String email;
  final String username;
  final String password;
  final NameModel name;
  final AddressModel address;
  final String phone;

  const UserModel({
    required this.id,
    required this.email,
    required this.username,
    required this.password,
    required this.name,
    required this.address,
    required this.phone,
  });

  UserModel.from(Map<String, dynamic>? map)
      : this(
          id: checkIntOrDefault(map?['id']),
          email: checkStringOrDefault(map?['email']),
          username: checkStringOrDefault(map?['username']),
          password: checkStringOrDefault(map?['password']),
          name: NameModel.from(map?['name']),
          address: AddressModel.from(map?['address']),
          phone: checkStringOrDefault(map?['phone']),
        );

  @override
  String toString() => '''
{
  id: $id,
  email: "$email",
  username: "$username",
  password: "$password",
  name: ${formatPretty(name.toString())},
  address: ${formatPretty(address.toString())},
  phone: "$phone",
}''';
}
