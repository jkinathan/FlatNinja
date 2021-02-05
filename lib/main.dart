// import 'dart:html';

import 'package:flutter/material.dart';

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
      body: Center(
        child: IconButton(
          onPressed: () {
              print("Fire email");
          },
          icon: Icon(
            Icons.alternate_email,
            color: Colors.purple,
          ),
        ),
        // RaisedButton.icon(
        //   onPressed: () {
        //     print('You just clicked me');
        //   },
        //   icon: Icon(
        //     Icons.email,
        //   ),
        //   label: Text(
        //       'Mail me',
        //       style: TextStyle(fontSize: 40.0,fontFamily: 'IndieFlower'),
        //   ),
        //   color: Colors.orange,
        // ),
        // Image.asset('assets/foodie.jpg'),//Image.network('');
        // Image(
        //   // image: NetworkImage('https://images.unsplash.com/photo-1550792173-5220eacae50e?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80'),
        //   // image: AssetImage('assets/foodie.jpg'),
        //
        // ),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text("Click"),
        backgroundColor: Colors.purpleAccent[400],
      ),
    );

  }
}