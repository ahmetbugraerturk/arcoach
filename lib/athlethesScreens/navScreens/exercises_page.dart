import 'package:arcoach/athlethesScreens/target_screen.dart';
import 'package:flutter/material.dart';

class exercisesPage extends StatefulWidget {
  const exercisesPage({Key? key}) : super(key: key);

  @override
  _exercisesPageState createState() => _exercisesPageState();
}

class _exercisesPageState extends State<exercisesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => targetScreen()),
            );
          },
          child: Text('This is exercises page. Click to go to target screen.'),
        ),
      ),
    );
  }
}
