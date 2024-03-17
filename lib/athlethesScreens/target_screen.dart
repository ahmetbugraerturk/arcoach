// ignore_for_file: camel_case_types, library_private_types_in_public_api

import 'dart:math' as math;
import 'dart:ui';

import 'package:arcoach/onBoardingScreens/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:arcoach/constants.dart' as constants;

class targetScreen extends StatefulWidget {
  const targetScreen({super.key});
  @override
  _targetScreenState createState() => _targetScreenState();
}

String point = "0";

class _targetScreenState extends State<targetScreen> {
  Offset dragGesturePosition = Offset.zero;
  bool isPanning = false;
  bool isTapped = false;
  bool isw2y = true;
  List<String> points = [];
  final shotCount = 6;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (points.length < shotCount) {
              points.add(point);
            } else {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return loginScreen();
              }));
            }
          });
        },
        child: points.length == shotCount
            ? Icon(Icons.arrow_forward)
            : Icon(Icons.check),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                height: 50,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: const EdgeInsets.all(5),
                        alignment: Alignment.center,
                        child: Text(points[index],
                            style: Theme.of(context).textTheme.headlineMedium),
                      );
                    },
                    itemCount: points.length),
              ),
            ),
            const SizedBox(height: 40),
            Center(
                child: Text(
              point,
              style: Theme.of(context).textTheme.headlineLarge,
            )),
            Stack(children: [
              isw2y
                  ? GestureDetector(
                      onPanUpdate: (DragUpdateDetails details) {
                        setState(() {
                          dragGesturePosition = details.localPosition;
                          w2yCalcPoint(
                              Size(MediaQuery.of(context).size.width,
                                  MediaQuery.of(context).size.width * 1.3),
                              dragGesturePosition);
                        });
                      },
                      onPanStart: (details) => isPanning = true,
                      onPanEnd: (details) => setState(() {
                        isPanning = false;
                      }),
                      onTapDown: (details) {
                        setState(() {
                          dragGesturePosition = details.localPosition;
                          isTapped = true;
                          w2yCalcPoint(
                              Size(MediaQuery.of(context).size.width,
                                  MediaQuery.of(context).size.width * 1.3),
                              dragGesturePosition);
                        });
                      },
                      child: CustomPaint(
                        painter:
                            w2yTargetPainter(dragGesturePosition, isTapped),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.width * 1.3,
                          alignment: Alignment.center,
                        ),
                      ),
                    )
                  : GestureDetector(
                      onPanUpdate: (DragUpdateDetails details) {
                        setState(() {
                          dragGesturePosition = details.localPosition;
                          bl2yCalcPoint(
                              Size(MediaQuery.of(context).size.width,
                                  MediaQuery.of(context).size.width * 1.3),
                              dragGesturePosition);
                        });
                      },
                      onPanStart: (details) => isPanning = true,
                      onPanEnd: (details) => setState(() {
                        isPanning = false;
                      }),
                      onTapDown: (details) {
                        setState(() {
                          dragGesturePosition = details.localPosition;
                          isTapped = true;
                          bl2yCalcPoint(
                              Size(MediaQuery.of(context).size.width,
                                  MediaQuery.of(context).size.width * 1.3),
                              dragGesturePosition);
                        });
                      },
                      child: CustomPaint(
                        painter:
                            bl2yTargetPainter(dragGesturePosition, isTapped),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.width * 1.3,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
              Positioned(
                left: dragGesturePosition.dx,
                top: dragGesturePosition.dy - 100,
                child: RawMagnifier(
                  decoration: const MagnifierDecoration(
                    shape: CircleBorder(),
                  ),
                  size: isPanning ? const Size(100, 100) : Size.zero,
                  focalPointOffset: const Offset(-50, 50),
                  magnificationScale: 3,
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}

class w2yTargetPainter extends CustomPainter {
  final Offset? _dragGesturePosition;
  final bool? _isTapped;
  w2yTargetPainter(this._dragGesturePosition, this._isTapped);

  @override
  void paint(Canvas canvas, Size size) {
    final maxSize = size.width / 2 * 0.9;
    final center = Offset(size.width / 2, size.height / 2);

    //First white circle
    final paintW1 = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    final radiusW1 = maxSize;
    canvas.drawCircle(center, radiusW1, paintW1);
    final paintBorderW = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke;
    canvas.drawCircle(center, radiusW1, paintBorderW);

    //Second white circle
    final paintW2 = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke;
    final radiusW2 = maxSize * 0.9;
    canvas.drawCircle(center, radiusW2, paintW2);

    //First black circle
    final paintB1 = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill;
    final radiusB1 = maxSize * 0.8;
    canvas.drawCircle(center, radiusB1, paintB1);
    final paintBorderB = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke;
    canvas.drawCircle(center, radiusB1, paintBorderB);

    //Second black circle
    final paintB2 = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke;
    final radiusB2 = maxSize * 0.7;
    canvas.drawCircle(center, radiusB2, paintB2);

    //First blue circle
    final paintBl1 = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;
    final radiusBl1 = maxSize * 0.6;
    canvas.drawCircle(center, radiusBl1, paintBl1);
    final paintBorderBl = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke;
    canvas.drawCircle(center, radiusBl1, paintBorderBl);

    //Second blue circle
    final paintBl2 = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke;
    final radiusBl2 = maxSize * 0.5;
    canvas.drawCircle(center, radiusBl2, paintBl2);

    //First red circle
    final paintR1 = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.fill;
    final radiusR1 = maxSize * 0.4;
    canvas.drawCircle(center, radiusR1, paintR1);
    final paintBorderR = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke;
    canvas.drawCircle(center, radiusR1, paintBorderR);

    //Second red circle
    final paintR2 = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke;
    final radiusR2 = maxSize * 0.3;
    canvas.drawCircle(center, radiusR2, paintR2);

    //First yellow circle
    final paintY1 = Paint()
      ..color = Colors.yellow
      ..style = PaintingStyle.fill;
    final radiusY1 = maxSize * 0.2;
    canvas.drawCircle(center, radiusY1, paintY1);
    final paintBorderY = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke;
    canvas.drawCircle(center, radiusY1, paintBorderY);

    //Second yellow circle
    final paintY2 = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke;
    final radiusY2 = maxSize * 0.1;
    canvas.drawCircle(center, radiusY2, paintY2);

    //Third yellow circle(X)
    final paintY3 = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke;
    final radiusY3 = maxSize * 0.05;
    canvas.drawCircle(center, radiusY3, paintY3);

    //+ drawing
    final paintX = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke;
    canvas.drawLine(Offset(center.dx - 2, center.dy),
        Offset(center.dx + 2, center.dy), paintX);
    canvas.drawLine(Offset(center.dx, center.dy - 2),
        Offset(center.dx, center.dy + 2), paintX);

    //Pointer
    final paintPointer = Paint()
      ..color = constants.myColorList[3]
      ..style = PaintingStyle.fill;
    double radiusPointer;
    if (_isTapped != null && _isTapped) {
      radiusPointer = 2.5;
    } else {
      radiusPointer = 0;
    }
    canvas.drawCircle(_dragGesturePosition!, radiusPointer, paintPointer);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class bl2yTargetPainter extends CustomPainter {
  final Offset? _dragGesturePosition;
  final bool? _isTapped;
  bl2yTargetPainter(this._dragGesturePosition, this._isTapped);

  @override
  void paint(Canvas canvas, Size size) {
    final maxSize = size.width / 2 * 0.9;
    final center = Offset(size.width / 2, size.height / 2);
    //First blue circle
    final paintBl1 = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;
    final radiusBl1 = maxSize;
    canvas.drawCircle(center, radiusBl1, paintBl1);
    final paintBorderBl = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke;
    canvas.drawCircle(center, radiusBl1, paintBorderBl);

    //Second blue circle
    final paintBl2 = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke;
    final radiusBl2 = maxSize * 5 / 6;
    canvas.drawCircle(center, radiusBl2, paintBl2);

    //First red circle
    final paintR1 = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.fill;
    final radiusR1 = maxSize * 4 / 6;
    canvas.drawCircle(center, radiusR1, paintR1);
    final paintBorderR = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke;
    canvas.drawCircle(center, radiusR1, paintBorderR);

    //Second red circle
    final paintR2 = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke;
    final radiusR2 = maxSize * 3 / 6;
    canvas.drawCircle(center, radiusR2, paintR2);

    //First yellow circle
    final paintY1 = Paint()
      ..color = Colors.yellow
      ..style = PaintingStyle.fill;
    final radiusY1 = maxSize * 2 / 6;
    canvas.drawCircle(center, radiusY1, paintY1);
    final paintBorderY = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke;
    canvas.drawCircle(center, radiusY1, paintBorderY);

    //Second yellow circle
    final paintY2 = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke;
    final radiusY2 = maxSize * 1 / 6;
    canvas.drawCircle(center, radiusY2, paintY2);

    //Third yellow circle(X)
    final paintY3 = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke;
    final radiusY3 = maxSize * 1 / 12;
    canvas.drawCircle(center, radiusY3, paintY3);

    //+ drawing
    final paintX = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke;
    canvas.drawLine(Offset(center.dx - 2, center.dy),
        Offset(center.dx + 2, center.dy), paintX);
    canvas.drawLine(Offset(center.dx, center.dy - 2),
        Offset(center.dx, center.dy + 2), paintX);

    //Pointer
    final paintPointer = Paint()
      ..color = constants.myColorList[3]
      ..style = PaintingStyle.fill;
    double radiusPointer;
    if (_isTapped != null && _isTapped) {
      radiusPointer = 2.5;
    } else {
      radiusPointer = 0;
    }
    canvas.drawCircle(_dragGesturePosition!, radiusPointer, paintPointer);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

double calcDistance(Offset a, Offset b) {
  return math.sqrt(math.pow(a.dx - b.dx, 2) + math.pow(a.dy - b.dy, 2));
}

void w2yCalcPoint(Size size, Offset dragGesturePosition) {
  final maxSize = size.width / 2 * 0.9;
  final center = Offset(size.width / 2, size.height / 2);

  final distances = {
    -2.5: "X",
    maxSize * 0.05: "10",
    maxSize * 0.1: "9",
    maxSize * 0.2: "8",
    maxSize * 0.3: "7",
    maxSize * 0.4: "6",
    maxSize * 0.5: "5",
    maxSize * 0.6: "4",
    maxSize * 0.7: "3",
    maxSize * 0.8: "2",
    maxSize * 0.9: "1",
    maxSize: "0"
  };

  distances.forEach((key, value) {
    if (calcDistance(center, dragGesturePosition) > key + 2.5) {
      point = value;
    }
  });
}

void bl2yCalcPoint(Size size, Offset dragGesturePosition) {
  final maxSize = size.width / 2 * 0.9;
  final center = Offset(size.width / 2, size.height / 2);

  final distances = {
    -2.5: "X",
    maxSize * 1 / 12: "10",
    maxSize * 1 / 6: "9",
    maxSize * 2 / 6: "8",
    maxSize * 3 / 6: "7",
    maxSize * 4 / 6: "6",
    maxSize * 5 / 6: "5",
    maxSize: "0"
  };

  distances.forEach((key, value) {
    if (calcDistance(center, dragGesturePosition) > key + 2.5) {
      point = value;
    }
  });
}
