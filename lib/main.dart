
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.purple,
      systemNavigationBarColor: Colors.purple,

  ));//change status bar color
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int counter=0;

  incCounter(){

    setState(() {
      counter = counter+1;
    });

  }


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

        children: [
          Column(
            children: quotes.map((quote){
              return QuoteCard(
                  quote: quote,
                  delete: (){
                      setState(() {
                        quotes.remove(quote);
                      });
                  },//parameter name called delete
              );
            }
    ).toList(),
    ),

          Row(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$counter',
                    style: TextStyle(color: Colors.red[600],fontSize: 35.0),
              ),
              RaisedButton(
                  color: Colors.purple,
                  onPressed: incCounter,
                  child: Text(
                    'Add count',
                    style: TextStyle(
                      color: Colors.red
                    ),
                  ),
                  ),
            ],
          ),
        ],
      )
    );
  }
}





