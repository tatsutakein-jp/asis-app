// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quest_list_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $questListRoute,
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
