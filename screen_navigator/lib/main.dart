import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

void main() {
  runApp(new MaterialApp(
    home: new CustomRadio(),
  ));
}

class CustomRadio extends StatefulWidget {
  @override
  createState() {
    return new CustomRadioState();
  }
}

class CustomRadioState extends State<CustomRadio> {
  List<RadioModel> sampleData = new List<RadioModel>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sampleData.add(new RadioModel(false, 'Dwarf'));
    sampleData.add(new RadioModel(false, 'Elf'));
    sampleData.add(new RadioModel(false, 'Gnome'));
    sampleData.add(new RadioModel(false, 'Goblin'));
    sampleData.add(new RadioModel(false, 'Halfing'));
    sampleData.add(new RadioModel(false, 'Human'));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Column(
        children: <Widget>[
          new Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: new Text(
                "Choose your Ancestry",
                style: TextStyle(fontSize: 24.2, color: Colors.blue),
              ),
            ),
          ),
          new Expanded(
            child: new ListView.builder(
            
            itemCount: sampleData.length,
            itemBuilder: (BuildContext context, int index) {
              return new InkWell(
                //highlightColor: Colors.red,
                splashColor: Colors.blueAccent,
                onTap: () {
                  setState(() {
                    sampleData.forEach((element) => element.isSelected = false);
                    sampleData[index].isSelected = true;
                  });
                },
                child: new RadioItem(sampleData[index]),
              );
            },
          ),
          ),
          
        ],
      ),
    );
  }
}

class RadioItem extends StatelessWidget {
  final RadioModel _item;
  RadioItem(this._item);
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: new EdgeInsets.all(20.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          new Container(
            height: 35.0,
            width: 150.0,
            child: new Center(
              child: new Text(_item.buttonText,
                  style: new TextStyle(
                      color: _item.isSelected ? Colors.white : Colors.black,
                      //fontWeight: FontWeight.bold,
                      fontSize: 18.0)),
            ),
            decoration: new BoxDecoration(
              color: _item.isSelected ? Colors.blueAccent : Colors.transparent,
              borderRadius: const BorderRadius.all(const Radius.circular(20.0)),
            ),
          ),
        ],
      ),
    );
  }
}

class RadioModel {
  bool isSelected;
  final String buttonText;

  RadioModel(this.isSelected, this.buttonText);
}
