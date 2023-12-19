import 'package:flutter/material.dart';

void main() {
  runApp(Basketball());
}

class Basketball extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text(
            "Points counter",
          ),
        ),
      ),
    );
  }
}
