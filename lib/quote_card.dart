import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  final Function delete;
  QuoteCard(
      {this.quote, this.delete}
  );

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Text(quote.thetext,
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.orange[600]
              ),
            ),
          ),
          SizedBox(height: 6.0),
          Text('by: '+quote.author,
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.grey[800],
            ),
          ),
          SizedBox(height: 8.0),
          FlatButton.icon(
            onPressed: delete,
            label: Text('Delete'),
            icon: Icon(
              Icons.delete,color: Colors.red[800],
            ),
          ),
        ],
      ),
    );
  }
}