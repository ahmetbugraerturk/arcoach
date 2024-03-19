// ignore_for_file: camel_case_types

import 'package:arcoach/athlethesScreens/target_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:arcoach/constants.dart' as constants;
import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  @override
  Widget build(BuildContext context) {
    bool isLightTheme = Theme.of(context).brightness == Brightness.light;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 5,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: isLightTheme
                        ? const Color.fromARGB(15, 20, 2, 9)
                        : const Color.fromARGB(15, 255, 240, 246),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(200),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 45,
                  left: 30,
                  child: Text(
                    "Good Morning!",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 30,
                  child: Text(
                    "${AppLocalizations.of(context)!.welcome} Arcoach",
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 20,
                  child: CircleAvatar(
                    radius: 60,
                    backgroundColor: isLightTheme
                        ? constants.kLightBackgroundColor
                        : constants.kDarkBackgroundColor,
                    child: const CircleAvatar(
                      radius: 55,
                      backgroundImage: AssetImage("assets/images/profile.jpg"),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 5, right: 5),
                  height: MediaQuery.of(context).size.height / 4.5,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.transparent,
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    margin: const EdgeInsets.only(left: 5),
                    height: MediaQuery.of(context).size.height / 4.5,
                    width: MediaQuery.of(context).size.width - 145,
                    decoration: BoxDecoration(
                      color: isLightTheme
                          ? constants.myColorList[5]
                          : constants.myColorList[1],
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(50),
                          bottomLeft: Radius.circular(50),
                          topRight: Radius.circular(50)),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              child: Icon(Icons.arrow_back_ios),
                            ),
                            Text("Exercises Date"),
                            GestureDetector(
                              child: Icon(Icons.arrow_forward_ios),
                            )
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height / 16,
                              width: (MediaQuery.of(context).size.width - 145) /
                                  2.5,
                              decoration: BoxDecoration(
                                color: isLightTheme
                                    ? const Color.fromARGB(35, 20, 2, 9)
                                    : const Color.fromARGB(35, 255, 240, 246),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(50)),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "70m",
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                  ),
                                  Text(
                                    "Distance",
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height / 16,
                              width: (MediaQuery.of(context).size.width - 145) /
                                  2.5,
                              decoration: BoxDecoration(
                                color: isLightTheme
                                    ? const Color.fromARGB(35, 20, 2, 9)
                                    : const Color.fromARGB(35, 255, 240, 246),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(50)),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "600",
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                  ),
                                  Text(
                                    "Total",
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height / 16,
                              width: (MediaQuery.of(context).size.width - 145) /
                                  2.5,
                              decoration: BoxDecoration(
                                color: isLightTheme
                                    ? const Color.fromARGB(35, 20, 2, 9)
                                    : const Color.fromARGB(35, 255, 240, 246),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(50)),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "8.3",
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                  ),
                                  Text(
                                    "Mean",
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height / 16,
                              width: (MediaQuery.of(context).size.width - 145) /
                                  2.5,
                              decoration: BoxDecoration(
                                color: isLightTheme
                                    ? const Color.fromARGB(35, 20, 2, 9)
                                    : const Color.fromARGB(35, 255, 240, 246),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(50)),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "7",
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                  ),
                                  Text(
                                    "Sets",
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 7),
                        SmoothPageIndicator(
                          controller: controller,
                          count: 5,
                          effect: ExpandingDotsEffect(
                              dotHeight: 5,
                              dotWidth: 5,
                              activeDotColor: constants.myColorList[3],
                              dotColor: constants.myColorList[6]),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 80,
                  right: 80,
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: isLightTheme
                          ? constants.myColorList[5]
                          : constants.myColorList[1],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 20,
                  child: Container(
                    margin: const EdgeInsets.only(right: 5),
                    height: MediaQuery.of(context).size.height / 4.5 - 120,
                    width: 115,
                    decoration: BoxDecoration(
                      color: isLightTheme
                          ? constants.myColorList[5]
                          : constants.myColorList[1],
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                    child: IconButton(
                      iconSize: 40,
                      icon: const Icon(Icons.arrow_forward),
                      onPressed: () {},
                    ),
                  ),
                ),
                Positioned(
                  right: 20,
                  top: 0,
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      color: isLightTheme
                          ? constants.kLightBackgroundColor
                          : constants.kDarkBackgroundColor,
                      borderRadius: BorderRadius.circular(60),
                    ),
                    alignment: Alignment.center,
                    child: CustomPaint(
                      painter: w2yTargetPainter(),
                      child: Container(
                        width: 110,
                        height: 110,
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 5),
                  height: MediaQuery.of(context).size.height / 4.5,
                  width: MediaQuery.of(context).size.width / 2 - 5,
                  decoration: BoxDecoration(
                    color: isLightTheme
                        ? const Color.fromARGB(15, 20, 2, 9)
                        : const Color.fromARGB(15, 255, 240, 246),
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Lorem Ipsum",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eget nulla id dolor pulvinar consectetur elementum et sem. Etiam eleifend feugiat feugiat. Proin sagittis urna ut orci tempus, et scelerisque mauris tempor. Cras tempus mattis ante, nec dignissim felis ullamcorper at. Proin pulvinar viverra rutrum. In hac habitasse platea dictumst. Sed pulvinar accumsan quam vel.",
                          style: Theme.of(context).textTheme.labelMedium,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "More info",
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(decoration: TextDecoration.underline),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 4.5,
                      width: MediaQuery.of(context).size.width / 2 - 5,
                      child: Column(
                        children: [
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height / 15,
                                width: MediaQuery.of(context).size.width / 2.5,
                                decoration: BoxDecoration(
                                  color: isLightTheme
                                      ? constants.myColorList[4]
                                      : constants.myColorList[2],
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(50)),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "70m",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium,
                                    ),
                                    Text(
                                      "Distance",
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 15),
                              Container(
                                height: MediaQuery.of(context).size.height / 15,
                                width:
                                    (MediaQuery.of(context).size.width / 2.5 -
                                            15) /
                                        2,
                                decoration: BoxDecoration(
                                  color: isLightTheme
                                      ? const Color.fromARGB(35, 20, 2, 9)
                                      : const Color.fromARGB(35, 255, 240, 246),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(50)),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "72",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium,
                                    ),
                                    Text(
                                      "Arrows",
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 15),
                              Container(
                                height: MediaQuery.of(context).size.height / 15,
                                width:
                                    (MediaQuery.of(context).size.width / 2.5 -
                                            15) /
                                        2,
                                decoration: BoxDecoration(
                                  color: isLightTheme
                                      ? const Color.fromARGB(35, 20, 2, 9)
                                      : const Color.fromARGB(35, 255, 240, 246),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(50)),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "12",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium,
                                    ),
                                    Text(
                                      "Sets",
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 15),
                            ],
                          ),
                          FloatingActionButton(
                            onPressed: () {},
                            shape: const CircleBorder(),
                            child: const Icon(Icons.add),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}

class w2yTargetPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final maxSize = size.width / 2;
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
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class bl2yTargetPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final maxSize = size.width;
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
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
