import 'package:flutter/material.dart';

const double _appBarHeight = 72;
const double _appBarTopPadding = 64;
const double _appBarElevation = 0;
const Padding _appBarTitleText = Padding(
    padding: EdgeInsets.only(top: _appBarTopPadding),
    child: Text(
      'Список\nинтересных мест',
      style: TextStyle(
        color: Color.fromRGBO(37, 40, 73, 1),
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w700,
        fontSize: 32,
      ),
      textAlign: TextAlign.left,
    ));

class SightListScreen extends StatefulWidget {
  const SightListScreen({Key? key}) : super(key: key);

  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: _appBarHeight + _appBarTopPadding,
        elevation: _appBarElevation,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: _appBarTitleText,
      ),
      body: const Center(
        child: Text('Hello'),
      ),
    );
  }
}
