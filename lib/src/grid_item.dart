import 'package:flutter/material.dart';

/// Contains a Flutter widget and its position to be display on the [GridBoard]
class GridItem extends StatelessWidget {
  const GridItem({
    Key? key,
    required this.top,
    required this.left,
    required this.child,
    required this.spanLeft,
    required this.spanDown,
  }) : super(key: key);

  /// the top row where this item starts
  final int top;

  /// the left column  where this item starts
  final int left;

  /// how many columns that this item will span on the grid
  final int spanLeft;

  /// how many rows that this item will span on the grid
  final int spanDown;

  /// widget that would be display on grid
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return child;
  }
}
