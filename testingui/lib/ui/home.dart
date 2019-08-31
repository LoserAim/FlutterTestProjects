import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _onPress() {
    print("Search Tapped!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.brown.shade700,
        title: new Text("Character Creation"),
        
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.search),
            onPressed: () => debugPrint("Icon Tapped!"),
          ),
          new IconButton(
            icon: new Icon(Icons.sort),
            onPressed: _onPress,
          ),
        ],
      ),
      
      
      backgroundColor: Colors.grey.shade200,
      body: new Container(
        alignment: Alignment.center,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            new Text("Bonni", style: new TextStyle(
              fontSize: 14.5,
              
              fontWeight: FontWeight.w400,
              color: Colors.deepOrange,
            ),),

            new InkWell(
              child: new Text("Tap Me!"),
              onTap: () => debugPrint("Button Tapped!"),
            ),

          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(

        onPressed: ()=> debugPrint("Floating Button Tapped!"),
        backgroundColor: Colors.brown,
        tooltip: 'Going up',
        child: new Icon(Icons.add),
      ),
      bottomNavigationBar: new BottomNavigationBar(items: [
          new BottomNavigationBarItem(icon: new Icon(Icons.add), title: new Text("Hey")),
          new BottomNavigationBarItem(icon: new Icon(Icons.print), title: new Text("Nope")),
          new BottomNavigationBarItem(icon: new Icon(Icons.call_missed), title: new Text("Hello")),
        ],
        onTap: (int i) => debugPrint("Hey Touched $i"),
      ),

      
    );
  }
}