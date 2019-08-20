import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Testing"),
        backgroundColor: Colors.blueGrey,
        ),
      body: Center(
        child: Text(
          "Hello There",
          textDirection: TextDirection.ltr,
          style: TextStyle(fontWeight: FontWeight.w800, fontStyle: FontStyle.italic),
        ),
        
      ), 
      backgroundColor: Colors.blueGrey,
    );
  }

}

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(

      color: Colors.blueGrey,
      child: new Center(      
        child: new Text("Welcome Home",
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontWeight: FontWeight.w800, 
          fontStyle: FontStyle.italic,
          fontSize: 34.5
          ),
        )
      ),

    
    );
  }

}