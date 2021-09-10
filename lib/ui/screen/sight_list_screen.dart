import 'package:flutter/material.dart';
import 'package:places/mocs.dart';
import 'package:places/ui/screen/sight_card.dart';

const Color _defaultAppBarTextColor = Color.fromRGBO(37, 40, 73, 1);
const double _appBarHeight = 72;
const double _appBarTopPadding = 64;
const double _appBarElevation = 0;
Padding _appBarTitleText = Padding(
  padding: const EdgeInsets.only(top: _appBarTopPadding),
  child: RichText(
    text: const TextSpan(
      style: TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w700,
        fontSize: 32,
      ),
      children: [
        TextSpan(
          text: 'С',
          style: TextStyle(
            color: Color.fromRGBO(76, 175, 80, 1),
          ),
          children: [
            TextSpan(
              text: 'писок\n',
              style: TextStyle(color: _defaultAppBarTextColor),
            ),
          ],
        ),
        TextSpan(
            text: 'и',
            style: TextStyle(
              color: Color.fromRGBO(251, 192, 45, 1),
            ),
            children: [
              TextSpan(
                text: 'нтересных мест',
                style: TextStyle(color: _defaultAppBarTextColor),
              )
            ]),
      ],
    ),
  ),
);

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
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 16),
        child: Column(
          children: [
            SightCard(sight: mocks[0]),
            SightCard(sight: mocks[1]),
            SightCard(sight: mocks[2]),
          ],
        ),
      ),
    );
  }
}
