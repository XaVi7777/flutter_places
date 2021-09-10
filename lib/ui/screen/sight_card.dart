import 'package:flutter/material.dart';

import 'package:places/domain/sight.dart';

class SightCard extends StatelessWidget {
  final Sight sight;

  const SightCard({
    required this.sight,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Container(
            height: 96,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
              color: Colors.amber,
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 16,
                  top: 16,
                  child: Text(
                    sight.type,
                    style: const TextStyle(
                      color: Colors.white,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
                Positioned(
                  top: 16,
                  right: 16,
                  child: Container(
                    width: 20,
                    height: 18,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 92,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(245, 245, 245, 1),
            ),
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: RichText(
                    text: TextSpan(
                        style: const TextStyle(
                          fontFamily: 'Roboto',
                          color: Color.fromRGBO(59, 62, 91, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        text: '${sight.name}\n',
                        children: const [
                      TextSpan(
                        text: 'краткое описание',
                        style: TextStyle(
                          color: Color.fromRGBO(124, 126, 146, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      )
                    ])),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
