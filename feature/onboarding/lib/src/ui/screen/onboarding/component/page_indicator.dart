import 'package:core_designsystem/space.dart';
import 'package:flutter/material.dart';

final class PageIndicator extends StatelessWidget {
  const PageIndicator({
    required this.tabController,
    required this.currentPageIndex,
    required this.isLastPage,
    required this.onSkipButtonPressed,
    required this.onNextButtonPressed,
    super.key,
  });

  final int currentPageIndex;
  final bool isLastPage;
  final TabController tabController;
  final VoidCallback onSkipButtonPressed;
  final VoidCallback onNextButtonPressed;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return ConstrainedBox(
      constraints: const BoxConstraints(minHeight: 64),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: AsisSpace.m),
              child: isLastPage
                  ? const SizedBox.shrink()
                  : TextButton(
                      onPressed: onSkipButtonPressed,
                      child: const Text('Skip'),
                    ),
            ),
          ),
          Expanded(
            child: Center(
              heightFactor: 0,
              child: TabPageSelector(
                controller: tabController,
                color: colorScheme.surface,
                selectedColor: colorScheme.primary,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: AsisSpace.m),
              child: isLastPage
                  ? const SizedBox.shrink()
                  : IconButton.filled(
                      onPressed: onNextButtonPressed,
                      icon: const Icon(Icons.arrow_forward_outlined),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
