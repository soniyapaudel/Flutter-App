import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Stateless widget -> root of app

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Text Changer App', home: TextChangerPage());
  }
}

// Stateful widget -> screen that change

class TextChangerPage extends StatefulWidget {
  @override
  _TextChangerPageState createState() => _TextChangerPageState();
}

class _TextChangerPageState extends State<TextChangerPage> {
  String message = "Hello Soniya";
  Color textColor = Colors.black;
  int clickCount = 0;

  void changeText() {
    setState(() {
      clickCount++;
      message = "Button pressed $clickCount times!";

      // chnage color on every click
      textColor = textColor == Colors.black ? Colors.blue : Colors.red;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Text Changer App")),
      body: Center(
        child: Text(
          message,
          style: TextStyle(fontSize: 28, color: textColor),
          textAlign: TextAlign.center,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeText,
        child: Icon(Icons.refresh),
      ),
    );
  }
}
