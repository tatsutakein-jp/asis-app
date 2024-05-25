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
            GoRouteData.$route(
              path: '/feeds',
              factory: $FeedListRouteExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: ':feedId',
                  factory: $FeedDetailRouteExtension._fromState,
                ),
              ],
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
                  path: 'add',
                  parentNavigatorKey: QuestAddRoute.$parentNavigatorKey,
                  factory: $QuestAddRouteExtension._fromState,
                ),
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
                  path: 'theme',
                  parentNavigatorKey:
                      ThemeSettingDialogRoute.$parentNavigatorKey,
                  factory: $ThemeSettingDialogRouteExtension._fromState,
                ),
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

extension $FeedListRouteExtension on FeedListRoute {
  static FeedListRoute _fromState(GoRouterState state) => const FeedListRoute();

  String get location => GoRouteData.$location(
        '/feeds',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $FeedDetailRouteExtension on FeedDetailRoute {
  static FeedDetailRoute _fromState(GoRouterState state) => FeedDetailRoute(
        feedId: state.pathParameters['feedId']!,
      );

  String get location => GoRouteData.$location(
        '/feeds/${Uri.encodeComponent(feedId)}',
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

extension $QuestAddRouteExtension on QuestAddRoute {
  static QuestAddRoute _fromState(GoRouterState state) => const QuestAddRoute();

  String get location => GoRouteData.$location(
        '/quest/add',
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

extension $ThemeSettingDialogRouteExtension on ThemeSettingDialogRoute {
  static ThemeSettingDialogRoute _fromState(GoRouterState state) =>
      const ThemeSettingDialogRoute();

  String get location => GoRouteData.$location(
        '/settings/theme',
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
