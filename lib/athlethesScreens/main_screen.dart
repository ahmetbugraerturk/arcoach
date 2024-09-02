// ignore_for_file: camel_case_types

/*
In order to make the selected item color change,
I had to add a selected property to the RNavItem class.
This is a custom addition to the package.
These additions are marked with "Custom added!!!!!!!!!"
Added this class to the r_nav_item.dart file. At line 4-22.
class RNavItem {
  /// Icon when item is not selected
  final IconData icon;

  /// Icon when item is  selected
  final IconData? activeIcon;

  /// Label of the item
  final String label;

  final bool selected; //Custom added!!!!!!!!

  const RNavItem({
    required this.icon,
    required this.label,
    this.activeIcon,
    required this.selected, //Custom added!!!!!!!!
  });
}
And added this line to the r_nav_n_sheet.dart file. At line 197.
selected: item.selected, //Custom added!!!!!!!!
*/

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
  final PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isLightTheme = Theme.of(context).brightness == Brightness.light;
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _index = index;
          });
        },
        children: const [
          homePage(),
          targetScreen(),
          chatPage(),
          profilePage(),
        ],
      ),
      bottomNavigationBar: RNavNSheet(
          onTap: (index) {
            _pageController.jumpToPage(index);
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
              : constants.myColorList[0],
          sheetCloseIconColor: isLightTheme
              ? constants.kLightBackgroundColor
              : constants.myColorList[5],
          sheetOpenIconColor: isLightTheme
              ? constants.kLightBackgroundColor
              : constants.myColorList[5],
          sheetOpenIconBoxColor: isLightTheme
              ? constants.myColorList[1]
              : constants.myColorList[0],
          onSheetToggle: (v) {
            setState(() {
              _open = v;
            });
          },
          items: [
            RNavItem(
              activeIcon: Icons.home,
              icon: Icons.home,
              label: "Home",
              selected: _index == 0,
            ),
            RNavItem(
              icon: Icons.track_changes,
              activeIcon: Icons.track_changes,
              label: "Exercises",
              selected: _index == 1,
            ),
            RNavItem(
              icon: Icons.chat_bubble,
              activeIcon: Icons.chat_bubble,
              label: "Chat",
              selected: _index == 2,
            ),
            RNavItem(
              icon: Icons.person,
              activeIcon: Icons.person,
              label: "Profile",
              selected: _index == 3,
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
