[!["Buy Me A Coffee"](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/samderlust)

# Flutter Grid Board - A simple grid layout

This package allow user to create a grid layout and free of customization on how heigh and width the children would be display.

## Installing and import the library:

Like any other package, add the library to your pubspec.yaml dependencies:

```
dependencies:
    flutter_grid_board: <latest_version>
```

Then import it wherever you want to use it:

```
import 'package:flutter_grid_board/flutter_grid_board.dart';
```

## Usage

look at example folder for all use cases

## Example

<img src="https://raw.githubusercontent.com/samderlust/images/main/grid.png" alt="Flutter grid board" style="width:600px;"/>

```
GridBoard(
        columns: 5,
        rows: 4,
        showGridLines: true,
        children: [
          GridItem(
            top: 0,
            left: 0,
            spanLeft: 1,
            spanDown: 2,
            child: Container(
              color: Colors.red.withOpacity(.4),
            ),
          ),
          GridItem(
            top: 1,
            left: 0,
            spanLeft: 3,
            spanDown: 2,
            child: Container(
              color: Colors.green.withOpacity(.4),
            ),
          ),
          GridItem(
            top: 0,
            left: 1,
            spanLeft: 4,
            spanDown: 1,
            child: Container(
              color: Colors.amber.withOpacity(.4),
            ),
          ),
          GridItem(
            top: 3,
            left: 4,
            spanLeft: 1,
            spanDown: 1,
            child: Container(
              color: Colors.teal.withOpacity(.4),
            ),
          ),
        ],
      ),
```

## Appreciate Your Feedbacks and Contributes

If you find anything need to be improve or want to request a feature. Please go ahead and create an issue in the [Github](https://github.com/samderlust/flutter_grid_layout) repo
