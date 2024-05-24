import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// ライセンスページルートデータ
abstract class LicenseRouteData extends GoRouteData {
  const LicenseRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const LicensePage();
}
