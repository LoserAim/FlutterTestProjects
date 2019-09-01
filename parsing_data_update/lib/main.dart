import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
//https://jsonplaceholder.typicode.com/posts
//https://jsonplaceholder.typicode.com/users

void main() async {
  List _data = await getJSON();

  runApp(
    new MaterialApp(
        home: new Scaffold(
            appBar: AppBar(
              title: Text("JSON Parsing"),
              backgroundColor: Colors.orange,
            ),
            body: ListView.builder(
              itemCount: _data.length,
              padding: const EdgeInsets.all(4.4),
              itemBuilder: (BuildContext context, int position) {
                return Column(
                  children: <Widget>[
                    Divider(
                      height: 13.4,
                    ),
                    ListTile(
                      title: Text(
                        _data[position]["name"],
                        style: TextStyle(
                          fontSize: 17.2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(_data[position]["email"]),
                      leading: CircleAvatar(
                        backgroundColor: Colors.orange,
                        child: Text(_data[position]["name"][0]),
                      ),
                      onTap: () => showTapMessage(context, 
                      _data[position]["address"]["street"] + " " 
                      + _data[position]["address"]["suite"] + "\n"
                      + _data[position]["address"]["geo"]["lat"]),
                    ),
                  ],
                );
              },
            ))),
  );
}

void showTapMessage(BuildContext context, String message) {
  
  var alertDialog = new AlertDialog(
    title: Text(message),
    actions: <Widget>[
      FlatButton(
        child: Text("Ok"),
        onPressed: () => Navigator.of(context).pop(),
      ),
    ],
  );

  showDialog(
      context: context,
      builder: (context) {
        return alertDialog;
      });
}

Future<List> getJSON() async {
  String apiUrl = "https://jsonplaceholder.typicode.com/users";
  http.Response response = await http.get(apiUrl);

  return json.decode(response.body);
}
