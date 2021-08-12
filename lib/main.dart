import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyFirstStatefullWidget(),
    );
  }
}

class MyFirstWidget extends StatelessWidget {
  MyFirstWidget({Key? key}) : super(key: key);
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    counter += 1;
    print('counter $counter');
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
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    counter += 1;
    print('counter $counter');
    return Container(
      child: null,
    );
  }
}
