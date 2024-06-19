import 'dart:async';

import 'package:core_authenticator/authenticator.dart';
import 'package:ferry/ferry.dart';
import 'package:gql_error_link/gql_error_link.dart';
import 'package:gql_exec/gql_exec.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:gql_transform_link/gql_transform_link.dart';

final class HttpAuthLink extends Link {
  HttpAuthLink({
    required String url,
    required Authenticator authenticator,
  }) : _authenticator = authenticator {
    _link = Link.from([
      TransformLink(requestTransformer: transformRequest),
      ErrorLink(onException: handleException),
      HttpLink(url),
    ]);
  }

  final Authenticator _authenticator;
  late final Link _link;
  String? _token;

  Future<void> updateToken() async {
    _token = await _authenticator.idToken;
  }

  Stream<Response> handleException(
    Request request,
    NextLink forward,
    LinkException exception,
  ) async* {
    if (exception is HttpLinkServerException &&
        exception.response.statusCode == 401) {
      await updateToken();

      yield* forward(request);

      return;
    }

    final message = exception is HttpLinkServerException
        ? exception.response.reasonPhrase!
        : exception.toString();

    Zone.current.handleUncaughtError(message, StackTrace.fromString(''));

    throw exception;
  }

  Request transformRequest(Request request) =>
      request.updateContextEntry<HttpLinkHeaders>(
        (headers) {
          final he = HttpLinkHeaders(
            headers: <String, String>{
              ...headers?.headers ?? <String, String>{},
              if (_token != null) 'Authorization': 'Bearer $_token',
            },
          );
          return he;
        },
      );

  @override
  Stream<Response> request(Request request, [NextLink? forward]) async* {
    if (_token == null) {
      await updateToken();
    }

    yield* _link.request(request, forward);
  }
}
