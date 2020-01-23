import 'package:flutter/material.dart';
import 'package:helloflutter/quote.dart';

class Quotecard extends StatelessWidget {

  final Quote quote;
  Quotecard
      ({
    this.quote
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Column(
        children: <Widget>[
          Text(
            quote.text,
            style: TextStyle(fontSize: 18.0, color: Colors.grey[600]),
          ),
          SizedBox(
            height: 6.0,
          ),
          Text(
            quote.author,
            style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[800]
            ),
          )
        ],
      ),
    );
  }
}