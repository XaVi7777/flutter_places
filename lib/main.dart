import 'package:flutter/material.dart';

import 'package:places/mocs.dart';
import 'package:places/ui/screen/sight_details_screen.dart';
import 'package:places/ui/screen/sight_list_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Surf course',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SightDetailsScreen(sight: mocks[0]),
      // home: const SightListScreen(),
    );
  }
}
