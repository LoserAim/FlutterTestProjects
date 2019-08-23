import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _weightController = new TextEditingController();
  int radioValue = 0;
  double _finalResult = 0.0;
  String _formattedText = "";
  void handleRadioValueChanged(int value) {
    setState(() {
      radioValue = value;

      switch (radioValue) {
        case 0:
          _finalResult = calculateWeight(_weightController.text, 0.06);
          _formattedText = "Your Weight on Pluto is ${_finalResult.toStringAsFixed(1)}";
          break;
        case 1:
          _finalResult = calculateWeight(_weightController.text, 0.38);
          _formattedText = "Your Weight on Mars is ${_finalResult.toStringAsFixed(1)}";
          break;
        case 2:
          _finalResult = calculateWeight(_weightController.text, 0.91);
          _formattedText = "Your Weight on Venus is ${_finalResult.toStringAsFixed(1)}";
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Weight on Planet X"),
        centerTitle: true,
        backgroundColor: Colors.black38,
      ),
      backgroundColor: Colors.blueGrey.shade300,
      body: new Container(
        alignment: Alignment.topCenter,
        child: new ListView(
          padding: const EdgeInsets.all(2.5),
          children: <Widget>[
            new Image.asset(
              'images/planet.png',
              height: 133.0,
              width: 200.0,
            ),
            new Container(
              margin: const EdgeInsets.all(3.0),
              alignment: Alignment.center,
              child: new Column(
                children: <Widget>[
                  new TextField(
                    controller: _weightController,
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                      labelText: "Your Weight on Earth",
                      hintText: "In pounds",
                      icon: new Icon(Icons.person_outline),
                    ),
                  ),
                  new Padding(
                    padding: new EdgeInsets.all(5.0),
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Radio<int>(
                        activeColor: Colors.brown,
                        groupValue: radioValue,
                        onChanged: handleRadioValueChanged,
                        value: 0,
                      ),
                      new Text(
                        "Pluto",
                        style: new TextStyle(
                            color: Colors.white70,
                            fontSize: 17.0,
                            fontWeight: FontWeight.w400),
                      ),
                      new Radio<int>(
                        activeColor: Colors.redAccent,
                        groupValue: radioValue,
                        onChanged: handleRadioValueChanged,
                        value: 1,
                      ),
                      new Text(
                        "Mars",
                        style: new TextStyle(
                            color: Colors.white70,
                            fontSize: 17.0,
                            fontWeight: FontWeight.w400),
                      ),
                      new Radio<int>(
                        activeColor: Colors.orangeAccent,
                        groupValue: radioValue,
                        onChanged: handleRadioValueChanged,
                        value: 2,
                      ),
                      new Text(
                        "Venus",
                        style: new TextStyle(
                            color: Colors.white70,
                            fontSize: 17.0,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.6),
                    child: new Text(
                      _weightController.text.isEmpty ? "Please enter weight" : "$_formattedText lbs",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 21.4,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  double calculateWeight(String weight, double multiplier) {
    if (weight.isNotEmpty && int.parse(weight) > 0) {
      return int.parse(weight) * multiplier;
    } else {
      print("Wrong!");
      return 180 * 0.38;
    }
  }
}
