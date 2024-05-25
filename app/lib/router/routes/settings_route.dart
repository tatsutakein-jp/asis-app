part of 'package:asis_app/router/app_router.dart';

/// TypedGoRoute for feature_settings
///
/// セッティングタブ内でのpush先はここのroutesにネストしていく
const settingsRoute = TypedGoRoute<SettingsRoute>(
  path: AppPagePath.settings,
  routes: [
    TypedGoRoute<ThemeSettingDialogRoute>(
      path: AppPagePath.theme,
    ),
    TypedGoRoute<LicenseRoute>(
      path: AppPagePath.license,
    ),
  ],
);

@TypedGoRoute<SettingsRoute>(path: AppPagePath.settings)
final class SettingsRoute extends GoRouteData {
  const SettingsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => SettingsPage(
        onTapThemeSetting: () => const ThemeSettingDialogRoute().go(context),
        onTapOpenSourceLicense: () => const LicenseRoute().go(context),
        onSignOutSuccess: () => const AuthRoute().go(context),
      );
}

/// テーマ設定ダイアログへのルート
final class ThemeSettingDialogRoute extends GoRouteData {
  const ThemeSettingDialogRoute();

  static final $parentNavigatorKey = rootNavigatorKey;

  @override
  DialogPage<void> buildPage(BuildContext context, GoRouterState state) =>
      DialogPage<void>(
        builder: (context) => ThemeSettingDialogPage(
          onTapPositive: () => context.pop(),
          onTapNegative: () => context.pop(),
        ),
      );
}

/// ライセンスページへのルート
final class LicenseRoute extends GoRouteData {
  const LicenseRoute();

  static final $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const LicensePage();
}

class DialogPage<T> extends Page<T> {
  const DialogPage({
    required this.builder,
    this.anchorPoint,
    this.barrierColor = Colors.black54,
    this.barrierDismissible = true,
    this.barrierLabel,
    this.useSafeArea = true,
    this.themes,
    super.key,
    super.name,
    super.arguments,
    super.restorationId,
  });

  final Offset? anchorPoint;
  final Color? barrierColor;
  final bool barrierDismissible;
  final String? barrierLabel;
  final bool useSafeArea;
  final CapturedThemes? themes;
  final WidgetBuilder builder;

  @override
  Route<T> createRoute(BuildContext context) {
    return DialogRoute<T>(
      context: context,
      settings: this,
      builder: builder,
      anchorPoint: anchorPoint,
      barrierColor: barrierColor,
      barrierDismissible: barrierDismissible,
      barrierLabel: barrierLabel,
      useSafeArea: useSafeArea,
      themes: themes,
    );
  }
}
