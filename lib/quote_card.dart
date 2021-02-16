import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  QuoteCard({this.quote,this.delete});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Column(children: <Widget>[
        Text(quote.text,
            style: TextStyle(
              color: Colors.amber,
              fontSize: 18.0,
              letterSpacing: 2.0,
            )),
        SizedBox(height: 6.0),
        Text('by ' + quote.author,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 10.0,
              letterSpacing: 2.0,
            )),
        SizedBox(height: 6.0),
        FlatButton.icon(
          onPressed: delete,
          label: Text('Delete'),
          icon: Icon(Icons.delete),
          color: Colors.redAccent
        )
      ]),
    );
  }
}
