import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';

const Color _defaultBackgroundColor = Colors.white;

class SightDetailsScreen extends StatelessWidget {
  final Sight sight;

  const SightDetailsScreen({required this.sight, Key? key}) : super(key: key);

  Widget _galleryWidget() => Container(
        color: Colors.amber,
        child: Stack(
          children: [
            Container(
              height: 360,
            ),
            Positioned(
              top: 60,
              left: 16,
              child: Container(
                height: 32,
                width: 32,
                decoration: const BoxDecoration(
                    color: _defaultBackgroundColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    )),
              ),
            ),
          ],
        ),
      );

  Widget _actionPanelWidget() => Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 22,
                  height: 19,
                  color: Colors.green,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text('Запланировать',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        color: Color.fromRGBO(59, 62, 91, 1),
                        fontSize: 14,
                      )),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 22,
                  height: 19,
                  color: Colors.green,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    'В Избранное',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      color: Color.fromRGBO(59, 62, 91, 1),
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );

  Widget _navigationButtonWidget() => Container(
        margin: const EdgeInsets.only(bottom: 10),
        height: 48,
        decoration: const BoxDecoration(
            color: Color.fromRGBO(76, 175, 80, 1),
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.white,
              height: 18,
              width: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8),
              child: Text(
                'NAVIGATE TO',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  letterSpacing: 0.3,
                ),
              ),
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _galleryWidget(),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                      text: TextSpan(
                          text: '${sight.name}\n',
                          style: const TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Color.fromRGBO(59, 62, 91, 1),
                          ),
                          children: [
                        TextSpan(
                          text: sight.type,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        const TextSpan(
                          text: '   closed until 09:00',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(124, 126, 146, 1),
                          ),
                        ),
                      ])),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Text(
                      sight.details,
                      style: const TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        color: Color.fromRGBO(59, 62, 91, 1),
                      ),
                    ),
                  ),
                  _navigationButtonWidget(),
                  const Divider(
                    height: 3,
                    color: Color.fromRGBO(124, 126, 146, 0.56),
                  ),
                  _actionPanelWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
