import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'quote.dart';
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

  List<Quote> quotes = [
    Quote(thetext:"Be Happy",author:"Jordan"),
    Quote(thetext:"Talk to me",author:"Murvin"),
    Quote(thetext:"Pop deyshyt",author:"Albryt"),
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
          return Text('${quote.thetext} - ${quote.author}');
    }).toList(),

    )
    );
  }
}



