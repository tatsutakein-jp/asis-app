import 'package:feature_home/src/ui/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class HomeRouteData extends GoRouteData {
  const HomeRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) => HomePage();
}
