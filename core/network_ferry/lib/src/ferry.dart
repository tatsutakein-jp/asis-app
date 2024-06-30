import 'package:core_authenticator/authenticator.dart';
import 'package:core_model/app_config.dart';
import 'package:core_network_ferry/src/http_auth_link.dart';
import 'package:core_network_ferry/src/news/ferry_news_remote_data_source.dart';
import 'package:core_network_ferry/src/quests/ferry_main_quest_remote_data_source.dart';
import 'package:ferry/ferry.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ferry.g.dart';

/// Client instance
@Riverpod(keepAlive: true)
Client ferryClient(FerryClientRef ref) {
  final appConfig = ref.watch(appConfigProvider);
  final authenticator = ref.watch(authenticatorProvider);

  return Client(
    link: HttpAuthLink(
      url: appConfig.backendUrl,
      authenticator: authenticator,
    ),
    cache: Cache(),
    defaultFetchPolicies: {
      OperationType.query: FetchPolicy.NetworkOnly,
    },
  );
}

/// Ferry Client
List<Override> ferryClientProviders() {
  return <Override>[
    ferryNewsRemoteDataSourceProvider,
    ferryMainQuestRemoteDataSourceProvider,
  ];
}
