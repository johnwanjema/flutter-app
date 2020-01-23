import 'package:flutter/material.dart';
import 'package:helloflutter/quote.dart';

class Quotecard extends StatelessWidget {

  final Quote quote;
  final Function  delete;
  Quotecard
      ({
    this.quote,this.delete
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
          ),
          SizedBox(height: 8,),
          FlatButton.icon(
              onPressed: delete,
            label: Text('Delete'),
            icon:Icon(Icons.delete),
          )
        ],
      ),
    );
  }
}