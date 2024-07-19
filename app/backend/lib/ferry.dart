import 'package:backend/http_auth_link.dart';
import 'package:ferry/ferry.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ferry.g.dart';

/// Client instance
@Riverpod(keepAlive: true)
Client ferryClient(FerryClientRef ref) {
  // final appConfig = ref.read(appConfigProvider);

  return Client(
    link: HttpAuthLink(
      // TODO: env から読み込む
      url: 'https://asis-stg.hasura.app/v1/graphql',
    ),
    cache: Cache(),
    defaultFetchPolicies: {
      OperationType.query: FetchPolicy.NetworkOnly,
    },
  );
}
