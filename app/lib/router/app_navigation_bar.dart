import 'package:asis_app/router/app_navigation_label.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// アプリで使用するボトムナビゲーションバー
///
/// home, quest, settingsの3つの画面を保有している
class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({
    required this.navigationShell,
    super.key,
  });

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: AppNavigationLabel.home,
          ),
          NavigationDestination(
            icon: Icon(Icons.map),
            label: AppNavigationLabel.quest,
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: AppNavigationLabel.settings,
          ),
        ],
        onDestinationSelected: (index) {
          navigationShell.goBranch(
            index,
            initialLocation: index == navigationShell.currentIndex,
          );
        },
      ),
    );
  }
}
