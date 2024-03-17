// ignore_for_file: camel_case_types, library_private_types_in_public_api

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../main.dart' as main;
import '../constants.dart' as constants;

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});
  @override
  _loginScreenState createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  bool isRegDialogOpen = false;
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    bool isLightTheme = Theme.of(context).brightness == Brightness.light;
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Lottie.asset(
                "assets/lottie/firstScreenBackground.lottie",
                decoder: main.customDecoder,
                fit: BoxFit.fill,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width / 2,
              ),
              Transform.rotate(
                angle: 3.14,
                child: Lottie.asset(
                  "assets/lottie/firstScreenBackground.lottie",
                  decoder: main.customDecoder,
                  fit: BoxFit.fill,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width / 2,
                ),
              )
            ],
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
              child: const SizedBox(),
            ),
          ),
          SafeArea(
            minimum: EdgeInsets.fromLTRB(
                MediaQuery.of(context).size.width / 15,
                MediaQuery.of(context).size.height / 20,
                MediaQuery.of(context).size.width / 15,
                0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20,
                  ),
                  Text(AppLocalizations.of(context)!.welcome,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontWeight: FontWeight.bold, height: 1)),
                  const SizedBox(
                    height: 4,
                  ),
                  Text("Arcoach",
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(
                              fontWeight: FontWeight.bold,
                              height: 1,
                              letterSpacing: 2)),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    AppLocalizations.of(context)!.pleaseLogin,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontWeight: FontWeight.bold, height: 1),
                  ),
                  SizedBox(
                    height: (MediaQuery.of(context).size.height / 2 -
                            MediaQuery.of(context).size.height / 2.5) /
                        1.5,
                  ),
                  Center(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      height: MediaQuery.of(context).size.height / 2.5,
                      decoration: BoxDecoration(
                          color: isLightTheme
                              ? const Color.fromARGB(15, 20, 2, 9)
                              : const Color.fromARGB(15, 255, 240, 246),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: isLightTheme
                                  ? const Color.fromARGB(100, 255, 240, 246)
                                  : const Color.fromARGB(100, 20, 2, 9),
                              hintText: AppLocalizations.of(context)!.email,
                              hintStyle: Theme.of(context).textTheme.bodyMedium,
                              prefixIcon: const Icon(Icons.email),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 50,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: isLightTheme
                                  ? const Color.fromARGB(100, 255, 240, 246)
                                  : const Color.fromARGB(100, 20, 2, 9),
                              hintText: AppLocalizations.of(context)!.password,
                              hintStyle: Theme.of(context).textTheme.bodyMedium,
                              prefixIcon: const Icon(Icons.key),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 100,
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            child: GestureDetector(
                              onTap: () => clickForgotPass(),
                              child: Text(
                                AppLocalizations.of(context)!.forgotPass,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: isLightTheme
                                      ? constants.kLightTextColor
                                      : constants.kDarkTextColor,
                                  height: 1,
                                ),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value;
                                    if (isChecked == true) {
                                      clickStaySignedIn();
                                    }
                                  });
                                },
                              ),
                              Text(AppLocalizations.of(context)!.staySignedIn,
                                  style:
                                      Theme.of(context).textTheme.bodyMedium),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 100,
                          ),
                          Center(
                            child: GestureDetector(
                              onTap: () => clickDontHaveAccount(),
                              child: Text(
                                AppLocalizations.of(context)!.dontAccount,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: isLightTheme
                                      ? constants.kLightTextColor
                                      : constants.kDarkTextColor,
                                  height: 1,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: (MediaQuery.of(context).size.height / 2 -
                            MediaQuery.of(context).size.height / 2.5) /
                        1.5,
                  ),
                  OutlinedButton(
                    onPressed: () => clickLogin(),
                    style: OutlinedButton.styleFrom(
                      minimumSize: const Size(150, 50),
                      padding: const EdgeInsets.all(15),
                      textStyle: Theme.of(context).textTheme.titleMedium,
                      side: BorderSide(
                          width: 2,
                          color: isLightTheme
                              ? constants.kLightTextColor
                              : constants.kDarkTextColor),
                    ),
                    child: Text(AppLocalizations.of(context)!.login,
                        style: Theme.of(context).textTheme.titleMedium),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 30,
                  ),
                  Text(AppLocalizations.of(context)!.developedBy,
                      style: Theme.of(context).textTheme.labelSmall),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 30,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void clickForgotPass() {}
  void clickStaySignedIn() {}
  void clickDontHaveAccount() {}
  void clickLogin() {}
}
