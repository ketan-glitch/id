import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: IdCard(),
  ));
}

class IdCard extends StatefulWidget {
  @override
  _IdCardState createState() => _IdCardState();
}

class _IdCardState extends State<IdCard> {

  int viewCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            viewCounter += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/ktn.jpeg'),
                radius: 90.0,
              ),
            ),
            Divider(
              height: 90.0,
              color: Colors.grey[800],
            ),
            Text(
              'Name',
              style: TextStyle(color: Colors.grey,
                  letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              'Ketan Kadam',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  fontSize: 32.0,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40.0,),
            Text(
              'View Counter',
              style: TextStyle(color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              '$viewCounter',
              style: TextStyle(
                color: Colors.amberAccent[200],
                fontSize: 32.0,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40.0,),
            Text(
              'Contact',
              style: TextStyle(color: Colors.grey,
                  letterSpacing: 2.0),
            ),
            SizedBox(height: 10.0,),

            Row(
              children: <Widget>[
                Icon(
                  Icons.phone,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0,),
                Text(
                  '8689814110',
                  style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 16.0,
                      letterSpacing: 1.0),
                ),
              ],
            ),
            SizedBox(height: 10.0,),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0,),
                Text(
                  'ketank39@gmail.com',
                  style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 16.0,
                      letterSpacing: 1.0),
                ),
              ],
            ),


          ],
        ),
      ),
    );
  }
}
