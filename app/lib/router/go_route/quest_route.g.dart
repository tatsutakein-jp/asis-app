// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quest_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $questRoute,
    ];

RouteBase get $questRoute => GoRouteData.$route(
      path: '/quest',
      factory: $QuestRouteExtension._fromState,
    );

extension $QuestRouteExtension on QuestRoute {
  static QuestRoute _fromState(GoRouterState state) => const QuestRoute();

  String get location => GoRouteData.$location(
        '/quest',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
