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

  Widget quoteTemplate(quote){
      return Card(
          margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
          child: Column(
              children: [
                  Text(quote.thetext,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey[600]
                  ),
                  ),
                SizedBox(height: 6.0),
                Text(quote.author,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[800],
                ),
                ),
              ],
          ),
      );
  }
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
          return quoteTemplate(quote);
    }).toList(),

    )
    );
  }
}



