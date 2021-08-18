import 'package:flutter/material.dart';

void main() {
  runApp(App());
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
      home: MyFirstStatefullWidget(),
    );
  }
}

class MyFirstWidget extends StatelessWidget {
  MyFirstWidget({Key? key}) : super(key: key);

  showRuntimeType() => context.runtimeType;

  @override
  Widget build(BuildContext context) {
    print('>>>${showRuntimeType()}');
    return Container(
      child: Center(
        child: Text('Hello!'),
      ),
    );
  }
}

class MyFirstStatefullWidget extends StatefulWidget {
  MyFirstStatefullWidget({Key? key}) : super(key: key);

  @override
  _MyFirstStatefullWidgetState createState() => _MyFirstStatefullWidgetState();
}

class _MyFirstStatefullWidgetState extends State<MyFirstStatefullWidget> {
  showRuntimeType() => context.runtimeType;

  @override
  Widget build(BuildContext context) {
    print('>>>${showRuntimeType()}');
    return Container(
      child: Text('Hello!'),
    );
  }
}
