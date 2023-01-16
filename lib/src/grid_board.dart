import 'package:flutter/material.dart';

import 'grid_item.dart';

/// GridBoard is the foundation of the grid layout,
///
/// it generates the grid system and allow user to add [GridItem] upon it.
class GridBoard extends StatelessWidget {
  const GridBoard({
    Key? key,
    required this.columns,
    required this.rows,
    required this.children,
    this.showGridLines = false,
  }) : super(key: key);

  /// number of columns in grid
  final int columns;

  /// number of rows in grid
  final int rows;

  /// grid items that will be displayed on the grid lay out
  final List<GridItem> children;

  /// show the grid lines
  final bool showGridLines;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final colWidth = constraints.maxWidth / columns;
        final rowHeight = constraints.maxHeight / rows;
        return Stack(
          fit: StackFit.expand,
          children: [
            if (showGridLines)
              for (var i = 0; i < columns; i++)
                Positioned(
                  height: constraints.maxHeight,
                  key: ValueKey("{col_$i}"),
                  left: i * colWidth,
                  child:
                      const VerticalDivider(thickness: 1, indent: 0, width: 0),
                ),
            if (showGridLines)
              for (var i = 0; i < rowHeight; i++)
                Positioned(
                  width: constraints.maxWidth,
                  key: ValueKey("{row_$i}"),
                  top: i * rowHeight,
                  child: const Divider(thickness: 1, indent: 0, height: 0),
                ),
            ...children
                .map(
                  (e) => Positioned(
                    key: ValueKey(e.hashCode),
                    top: rowHeight * e.top,
                    left: colWidth * e.left,
                    width: colWidth * e.spanLeft,
                    height: rowHeight * e.spanDown,
                    child: e.child,
                  ),
                )
                .toList()
          ],
        );
      },
    );
  }
}
