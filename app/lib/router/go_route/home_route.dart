import 'package:asis_app/router/app_page_path.dart';
import 'package:feature_home/feature_home.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'home_route.g.dart';

/// TypedGoRoute for feature_home
///
/// ホームタブ内でのpush先はここのroutesにネストしていく
const homeRoute = TypedGoRoute<HomeRoute>(path: AppPagePath.home);

@TypedGoRoute<HomeRoute>(path: AppPagePath.home)
final class HomeRoute extends HomeRouteData {
  const HomeRoute();
}
