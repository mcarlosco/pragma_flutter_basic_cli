import '../api_config.dart';
import '../helpers.dart';

mixin ApiCommon {
  final apiConfig = const ApiConfig();
  final httpHelper = const HttpHelper();

  Uri createSecureUri(String path, [Map<String, dynamic>? params]) =>
      Uri.https(apiConfig.host, path, params);
}
