import 'package:flutter/material.dart';
import 'package:flutter_grid_board/flutter_grid_board.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GridBoardExample(),
    );
  }
}

class GridBoardExample extends StatelessWidget {
  const GridBoardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridBoard(
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
    );
  }
}
