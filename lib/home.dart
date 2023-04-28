import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                final double pinkHeight = constraints.maxHeight / 3;
                final double pinkWidth = constraints.maxWidth;
                final double greenWidth = pinkWidth - 50;

                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.all(8),
                        width: pinkWidth,
                        height: pinkHeight / 2,
                        color: Colors.pink,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: pinkWidth / 2.5,
                              height: pinkHeight / 6,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: greenWidth,
                              height: pinkHeight / 6,
                              color: Colors.green,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Flexible(
                      flex: 2,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            clipBehavior: Clip.none,
                            padding: EdgeInsets.all(20),
                            width: pinkWidth,
                            height: pinkHeight / 2,
                            color: Colors.pink,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width: greenWidth,
                                  height: pinkHeight / 6,
                                  color: Colors.green,
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: pinkHeight - pinkHeight / 1.8,
                            left: pinkWidth / 2 - greenWidth / 3.5,
                            child: Container(
                              width: 200,
                              height: 40,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
