// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MaterialApp(

    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello to my App bar"),
        centerTitle: true,
        backgroundColor: Colors.purpleAccent[400],
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        margin: EdgeInsets.all(50.0),
        color: Colors.deepOrangeAccent,
        child: Text(
          'Testing padding',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text("Click"),
        backgroundColor: Colors.purpleAccent[400],
      ),
    );

  }
}