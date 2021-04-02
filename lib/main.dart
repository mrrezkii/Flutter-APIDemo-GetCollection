import 'package:api_demo_get2/post_result_model.dart';
import 'package:api_demo_get2/user_model.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

void main() {
  runApp(MyApp());
}

class _MyAppState extends State<MyApp> {
  String output = "no data";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("API Demo"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                output,
              ),
              RaisedButton(
                  onPressed: () {
                    User.getUsers("1").then((users) {
                      output = "";
                      for (int i = 0; i < users.length; i++) {
                        output = output + "[" + users[i].name + "]";
                      }
                      setState(() {});
                    });
                  },
                  child: Text("GET")),
            ],
          ),
        ),
      ),
    );
  }
}
