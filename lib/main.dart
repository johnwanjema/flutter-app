import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
 home:Home()
));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int  ninjalevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ninja ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            ninjalevel += 1;
          });
        },
        child: Icon(
          Icons.add
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 40,
               backgroundImage:  AssetImage('assests/avatar.jpg'),
              ),
            ),
            Divider(
              height: 60,
              color:Colors.grey[800]
            ),
            Text(
                'NAME',
                style: TextStyle(
                  color:Colors.white,
                  letterSpacing: 2.0
                ),
            ),
            SizedBox(height: 10.0,),
            Text(
              'john wanjema',
              style: TextStyle(
                  color:Colors.amberAccent[200],
                  letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              'Current Ninja level',
              style: TextStyle(
                  color:Colors.white,
                  letterSpacing: 2.0
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              '$ninjalevel ',
              style: TextStyle(
                  color:Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30.0,),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width : 10.0,),
                Text(
                  'jonwanjema@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

