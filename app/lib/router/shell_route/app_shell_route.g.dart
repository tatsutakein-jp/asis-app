// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_shell_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $appShellRouteData,
    ];

RouteBase get $appShellRouteData => StatefulShellRouteData.$route(
      factory: $AppShellRouteDataExtension._fromState,
      branches: [
        StatefulShellBranchData.$branch(
          navigatorKey: HomeBranch.$navigatorKey,
          routes: [
            GoRouteData.$route(
              path: '/home',
              factory: $HomeRouteExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          navigatorKey: QuestBranch.$navigatorKey,
          routes: [
            GoRouteData.$route(
              path: '/quest',
              factory: $QuestListRouteExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: ':questId',
                  parentNavigatorKey: QuestDetailRoute.$parentNavigatorKey,
                  factory: $QuestDetailRouteExtension._fromState,
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          navigatorKey: SettingsBranch.$navigatorKey,
          routes: [
            GoRouteData.$route(
              path: '/settings',
              factory: $SettingsRouteExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'license',
                  parentNavigatorKey: LicenseRoute.$parentNavigatorKey,
                  factory: $LicenseRouteExtension._fromState,
                ),
              ],
            ),
          ],
        ),
      ],
    );

extension $AppShellRouteDataExtension on AppShellRouteData {
  static AppShellRouteData _fromState(GoRouterState state) =>
      const AppShellRouteData();
}

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location(
        '/home',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

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

extension $QuestDetailRouteExtension on QuestDetailRoute {
  static QuestDetailRoute _fromState(GoRouterState state) => QuestDetailRoute(
        questId: state.pathParameters['questId']!,
      );

  String get location => GoRouteData.$location(
        '/quest/${Uri.encodeComponent(questId)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SettingsRouteExtension on SettingsRoute {
  static SettingsRoute _fromState(GoRouterState state) => const SettingsRoute();

  String get location => GoRouteData.$location(
        '/settings',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $LicenseRouteExtension on LicenseRoute {
  static LicenseRoute _fromState(GoRouterState state) => const LicenseRoute();

  String get location => GoRouteData.$location(
        '/settings/license',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
