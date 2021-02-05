// import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(

    home: Scaffold(
      appBar: AppBar(
        title: Text("Hello to my App bar"),
        centerTitle: true,
        backgroundColor: Colors.purpleAccent[400],
      ),
      body: Center(
        child: Text(
            "Hello Ninjaz",
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.orange[600],
            fontFamily: 'IndieFlower' //according to the name saved in pubspec
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text("Click"),
        backgroundColor: Colors.purpleAccent[400],
      ),
    ),
  ));
}
