// ignore_for_file: camel_case_types

import 'package:arcoach/athlethesScreens/navScreens/chat_page.dart';
import 'package:arcoach/athlethesScreens/navScreens/exercises_page.dart';
import 'package:arcoach/athlethesScreens/navScreens/home_page.dart';
import 'package:arcoach/athlethesScreens/navScreens/profile_page.dart';
import 'package:arcoach/athlethesScreens/target_screen.dart';
import 'package:flutter/material.dart';
import 'package:r_nav_n_sheet/r_nav_n_sheet.dart';
import 'package:arcoach/constants.dart' as constants;

class mainScreen extends StatefulWidget {
  const mainScreen({super.key});

  @override
  _mainScreenState createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  int _index = 0;
  bool _open = false;

  @override
  Widget build(BuildContext context) {
    bool isLightTheme = Theme.of(context).brightness == Brightness.light;
    return Scaffold(
      body: _index == 0
          ? const homePage()
          : _index == 1
              ? const targetScreen()
              : _index == 2
                  ? const chatPage()
                  : const profilePage(),
      bottomNavigationBar: RNavNSheet(
          onTap: (index) {
            setState(() {
              _index = index;
            });
            Future.delayed(const Duration(seconds: 1), () {
              setState(() {
                _index = index;
              });
            });
          },
          initialSelectedIndex: _index,
          borderColors: [
            isLightTheme
                ? constants.kLightBackgroundColor
                : constants.kDarkBackgroundColor,
            isLightTheme
                ? constants.kLightBackgroundColor
                : constants.kDarkBackgroundColor
          ],
          backgroundColor: isLightTheme
              ? const Color.fromARGB(15, 20, 2, 9)
              : const Color.fromARGB(15, 255, 240, 246),
          selectedItemColor: isLightTheme
              ? constants.myColorList[1]
              : constants.myColorList[5],
          unselectedItemColor: isLightTheme
              ? constants.myColorList[4]
              : constants.myColorList[4],
          sheet: Sheet(),
          sheetOpenIcon: Icons.add,
          sheetCloseIcon: Icons.add,
          sheetCloseIconBoxColor: isLightTheme
              ? constants.myColorList[1]
              : constants.myColorList[4],
          sheetCloseIconColor: isLightTheme
              ? constants.kLightBackgroundColor
              : constants.kDarkBackgroundColor,
          sheetOpenIconColor: isLightTheme
              ? constants.kLightBackgroundColor
              : constants.kDarkBackgroundColor,
          sheetOpenIconBoxColor: isLightTheme
              ? constants.myColorList[1]
              : constants.myColorList[4],
          onSheetToggle: (v) {
            setState(() {
              _open = v;
            });
          },
          items: const [
            RNavItem(
              activeIcon: Icons.home,
              icon: Icons.home,
              label: "Home",
            ),
            RNavItem(
              icon: Icons.track_changes,
              activeIcon: Icons.track_changes,
              label: "Exercises",
            ),
            RNavItem(
              icon: Icons.chat_bubble,
              activeIcon: Icons.chat_bubble,
              label: "Chat",
            ),
            RNavItem(
              icon: Icons.person,
              activeIcon: Icons.person,
              label: "Profile",
            ),
          ]),
    );
  }
}

class Sheet extends StatelessWidget {
  Sheet({Key? key}) : super(key: key);

  final icons = [
    {
      "i": Icons.home,
      "t": "Orders",
      "s": "5 pending orders",
      "c": Colors.indigo,
    },
    {
      "i": Icons.home,
      "t": "Payments",
      "s": "No pending payments",
      "c": Colors.purple,
    },
    {
      "i": Icons.home,
      "t": "Addresses",
      "s": "No pending payments",
      "c": Colors.green,
    },
    {
      "i": Icons.home,
      "t": "Wishlist",
      "s": "No pending payments",
      "c": Colors.red,
    },
    {
      "i": Icons.home,
      "t": "Buy again",
      "s": "No pending payments",
      "c": Colors.cyan,
    },
  ];

  final icons2 = [
    {
      "i": Icons.home_filled,
      "t": "Settings",
      "s": "Theme, color, etc.",
      "c": Colors.blueGrey,
    },
    {
      "i": Icons.home_filled,
      "t": "Help & Support",
      "s": "Chat with us",
      "c": Colors.deepOrange,
    },
    {
      "i": Icons.home_filled,
      "t": "About",
      "s": "Know more about us",
      "c": Colors.indigo,
    },
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return DraggableScrollableSheet(
      builder: (context, controller) {
        return Material(
          color: theme.backgroundColor,
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(20),
          ),
          child: Column(
            children: [
              Container(
                height: 8,
                width: 40,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  controller: controller,
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Wrap(
                        children: [
                          for (var icon in icons)
                            FractionallySizedBox(
                              widthFactor: 0.33,
                              child: Container(
                                decoration: BoxDecoration(
                                    color:
                                        (icon["c"] as Color).withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(10)),
                                margin: const EdgeInsets.all(5),
                                padding: const EdgeInsets.all(15),
                                child: Column(
                                  children: [
                                    Icon(
                                      (icon["i"] as IconData),
                                      color: icon["c"] as Color,
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      "${icon["t"]}",
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "More options".toUpperCase(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: theme.colorScheme.primary,
                            letterSpacing: 5,
                          ),
                        ),
                      ),
                      Wrap(
                        children: [
                          for (var icon in icons2) ...[
                            if (icons2.indexOf(icon) > 0)
                              const Divider(
                                color: Colors.black26,
                                height: 1,
                                indent: 48,
                              ),
                            ListTile(
                              leading: Icon(
                                (icon["i"] as IconData),
                                color: icon["c"] as Color,
                              ),
                              minLeadingWidth: 0,
                              minVerticalPadding: 20,
                              title: Text(
                                "${icon["t"]}",
                                style: const TextStyle(color: Colors.black),
                              ),
                              dense: true,
                              visualDensity: VisualDensity.compact,
                              subtitle: Text(
                                "${icon["s"]}",
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(color: Colors.black54),
                              ),
                            ),
                          ]
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
      minChildSize: 0.5,
      initialChildSize: 0.75,
    );
  }
}
