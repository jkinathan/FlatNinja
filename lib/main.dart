import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MaterialApp(

    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<String> quotes = [
    'Be Yourself',
    'I have nothing to declare except my genius',
    'The truth is rarely pure and never simple'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Column(
        children: quotes.map((quote){
          return Text(quote);
    }).toList(),

    )
    );
  }
}



