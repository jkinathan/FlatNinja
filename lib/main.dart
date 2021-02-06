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
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Ninja ID CARD"),
        centerTitle: true,
        backgroundColor: Colors.purpleAccent[400],
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0,40.0,30.0,0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/ninja1.png'),
                  radius: 50.0,
                ),
              ),
              Divider(height: 60.0,color: Colors.yellowAccent),
              Text(
                  'NAME:',
                style: TextStyle(
                    color: Colors.red,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Kinobe Jordan',
                style: TextStyle(
                  color: Colors.yellowAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.0),
              Text(
                'Current Ninja Level:',
                style: TextStyle(
                  color: Colors.red,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                '8',
                style: TextStyle(
                  color: Colors.yellowAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.0),
              Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.yellowAccent,
                  ),
                  SizedBox(width: 20.0),
                  Text(
                      'jkinobe@gmail.com',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 18.0,
                      letterSpacing: 1.0,
                    ),

                  ),
                ],
              ),
            ],
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