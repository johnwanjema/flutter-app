import 'package:flutter/material.dart';
import 'package:helloflutter/quote.dart';
import 'package:helloflutter/quote_card.dart';
import 'pages/home.dart';

void main() => runApp(MaterialApp(
    home: Home1())
);

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int ninjalevel = 0;
  List<Quote> quotes = [
    Quote(author: 'wanjema', text: 'Yes Bana'),
    Quote(author: 'njeri', text: 'vitu kwa groundni diffrent'),
    Quote(author: 'simple boy', text: 'inauma but inabidi uzoee')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ganster Points Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjalevel += 1;
          });
        },
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
//            Center(
//              child: CircleAvatar(
//                radius: 40,
//                backgroundImage: AssetImage('assests/avatar.jpg'),
//              ),
//            ),
//            Divider(height: 60, color: Colors.grey[800]),
//            Text(
//              'NAME',
//              style: TextStyle(color: Colors.white, letterSpacing: 2.0),
//            ),
//            SizedBox(
//              height: 10.0,
//            ),
//            Text(
//              'john wanjema',
//              style: TextStyle(
//                  color: Colors.amberAccent[200],
//                  letterSpacing: 2.0,
//                  fontSize: 28.0,
//                  fontWeight: FontWeight.bold),
//            ),
//            SizedBox(
//              height: 10.0,
//            ),
//            Text(
//              'Current Gangster points',
//              style: TextStyle(color: Colors.white, letterSpacing: 2.0),
//            ),
//            SizedBox(
//              height: 10.0,
//            ),
            Text(
              '$ninjalevel ',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
//            SizedBox(
//              height: 30.0,
//            ),
//            Row(
//              children: <Widget>[
//                Icon(
//                  Icons.email,
//                  color: Colors.grey[400],
//                ),
//                SizedBox(
//                  width: 10.0,
//                ),
//                Text(
//                  'jonwanjema@gmail.com',
//                  style: TextStyle(
//                    color: Colors.grey[400],
//                    fontSize: 18.0,
//                    letterSpacing: 1.0,
//                  ),
//                ),
//              ],
//            ),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: quotes
                    .map((quote) => Quotecard(
                        quote: quote,
                        delete: () {
                          setState(() {
                            quotes.remove(quote);
                          });
                        }))
                    .toList()
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
