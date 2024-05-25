import 'package:asis_app/router/app_navigation_label.dart';
import 'package:flutter/material.dart';

/// ホーム画面のナビゲーターのキー
final homeNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: AppNavigationLabel.home);

/// クエスト画面のナビゲーターのキー
final questNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: AppNavigationLabel.quest);

/// 設定画面のナビゲーターのキー
final settingsNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: AppNavigationLabel.settings);
