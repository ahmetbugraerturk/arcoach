import 'package:arcoach/athlethesScreens/target_screen.dart';
import 'package:flutter/material.dart';

class chatPage extends StatefulWidget {
  const chatPage({Key? key}) : super(key: key);

  @override
  _chatPageState createState() => _chatPageState();
}

class _chatPageState extends State<chatPage> {
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
          child: Text('This is chat page. Click to go to target screen.'),
        ),
      ),
    );
  }
}
