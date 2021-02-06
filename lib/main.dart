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
      body:
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Text('Hey'),
                  Text('There'),
                  Text('Its me'),
                ],
              ),
              Container(
                color: Colors.deepOrangeAccent,
                padding: EdgeInsets.all(30.0),
                child: Text('One'),
              ),
              Container(
                color: Colors.green,
                padding: EdgeInsets.all(40.0),
                child: Text('Two'),
              ),
              Container(
                color: Colors.blue,
                padding: EdgeInsets.all(50.0),
                child: Text('Three'),
              ),
            ],
          ),
      // Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: [
      //     Text('Hello World'),
      //     FlatButton(onPressed: (){}, color: Colors.purple,child: Text('Press me'),),
      //     Container(
      //       color: Colors.amberAccent,
      //       padding: EdgeInsets.all(30.0),
      //       child: Text('Inside my Container'),
      //     ),
      //   ],
      //
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text("Click"),
        backgroundColor: Colors.purpleAccent[400],
      ),
    );

  }
}