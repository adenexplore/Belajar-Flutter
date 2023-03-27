import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "BelajarFlutter.com",
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Belajar Flutter Bersama Denz"),
        ),
        body:
            Center(child: Text('Hello World', style: TextStyle(fontSize: 20))));
  }
}
