import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp( // #1 MaterialApp - To set up how the app looks and which screen opens first.
    title: 'Week 1 - All 8 Widgets',
    theme: ThemeData(primarySwatch: Colors.teal),
    home: const HomeScreen(),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold( // #2 Scaffold - This line is for the main layout of flutter screen.
    appBar: AppBar(title: const Text('All Widgets')), // #3 AppBar - To show the text on the uppper left of this screen.
    body: Center( // #7 Center - Is to center all child widget on the screen.
      child: Container( // #8 Container - It is used for spacing, padding, and layout.
        padding: const EdgeInsets.all(20),
        child: Column( // #6 Column - To arrange its children vertically or top to bottom.
          children: [
            Row( // #5 Row - While row is to arrange its children horizontally or side by side.
              children: [
                const Icon(Icons.star),
                const Text('Flutter'), // #4 Text - It will display the "Flutter" text.
              ],
            ),
          ],
        ),
      ),
    ),
  );
}