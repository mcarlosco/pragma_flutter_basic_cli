import 'dart:convert';

import 'package:http/http.dart';

import '../../fun_pro/coin.dart';

import '../exceptions.dart';

/// A helper for network communication with HTTP.
final class HttpHelper {
  const HttpHelper();

  /// Invokes [sender], delegated to send the HTTP [Request], and then invokes
  /// [constructor] iff the HTTP [Response] status code is 200 to decode its body.
  Future<Coin<R, Exception>> sendRequest<R, T>({
    required Future<Response> Function() sender,
    required R Function(T) constructor,
  }) async {
    try {
      final response = await sender();

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);

        return Coin.heads(constructor(json));
      }

      return Coin.tails(ApiException());
    } catch (_) {
      return Coin.tails(UnknownException());
    }
  }
}
