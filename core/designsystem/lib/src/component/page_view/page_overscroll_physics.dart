import 'package:flutter/material.dart';

/// 1ページ以上のスクロールを許可するページスクロール
///
/// 使用時は [PageView.physics] に指定しつつ [PageView.pageSnapping] を `false` にする
///
/// ```dart
/// PageView(
///   physics: const PageOverscrollPhysics(),
///   pageSnapping: false,
///   ...
/// )
/// ```
final class PageOverscrollPhysics extends ScrollPhysics {
  const PageOverscrollPhysics({
    super.parent,
    this.velocityPerOverscroll = 3500,
    this.viewportFraction = 1.0,
  });

  final double velocityPerOverscroll;
  final double viewportFraction;

  @override
  PageOverscrollPhysics applyTo(ScrollPhysics? ancestor) {
    return PageOverscrollPhysics(
      parent: buildParent(ancestor),
      velocityPerOverscroll: velocityPerOverscroll,
      viewportFraction: viewportFraction,
    );
  }

  double _getPage(ScrollMetrics position) {
    return position.pixels / (position.viewportDimension * viewportFraction);
  }

  double _getPixels(double page, ScrollMetrics position) {
    return page * position.viewportDimension * viewportFraction;
  }

  double _getTargetPixels(ScrollMetrics position, double velocity) {
    var page = _getPage(position);
    final overscrollPages = velocity / velocityPerOverscroll;
    page += overscrollPages;
    final pixels = _getPixels(page.roundToDouble(), position);
    return pixels;
  }

  @override
  Simulation? createBallisticSimulation(
    ScrollMetrics position,
    double velocity,
  ) {
    if ((velocity <= 0.0 && position.pixels <= position.minScrollExtent) ||
        (velocity >= 0.0 && position.pixels >= position.maxScrollExtent)) {
      return super.createBallisticSimulation(position, velocity);
    }

    final tolerance = toleranceFor(position);
    final target = _getTargetPixels(position, velocity);
    if (target != position.pixels) {
      return ScrollSpringSimulation(
        spring,
        position.pixels,
        target,
        velocity,
        tolerance: tolerance,
      );
    }
    return null;
  }

  @override
  bool get allowImplicitScrolling => false;
}
