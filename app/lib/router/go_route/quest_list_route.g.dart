// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quest_list_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $questListRoute,
      $questDetailRoute,
    ];

RouteBase get $questListRoute => GoRouteData.$route(
      path: '/quest',
      factory: $QuestListRouteExtension._fromState,
    );

extension $QuestListRouteExtension on QuestListRoute {
  static QuestListRoute _fromState(GoRouterState state) =>
      const QuestListRoute();

  String get location => GoRouteData.$location(
        '/quest',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $questDetailRoute => GoRouteData.$route(
      path: '/quest',
      parentNavigatorKey: QuestDetailRoute.$parentNavigatorKey,
      factory: $QuestDetailRouteExtension._fromState,
    );

extension $QuestDetailRouteExtension on QuestDetailRoute {
  static QuestDetailRoute _fromState(GoRouterState state) => QuestDetailRoute(
        questId: state.uri.queryParameters['quest-id']!,
      );

  String get location => GoRouteData.$location(
        '/quest',
        queryParams: {
          'quest-id': questId,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
