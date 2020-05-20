import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flexible widget example'),
        ),
        body: Row(
          children: <Widget>[
            Container(
              height: 100,
              color: Colors.purple,
              child: Text("Hello world"),
            ),
            Expanded(
              flex: 5,
              child: Container(
                height: 100,
                color: Colors.deepOrange,
                child: Text("Hello world,Saty Safe"),
              ),
            ),
            Flexible(
              fit: FlexFit.loose,
              flex: 2,
              child: Container(
                height: 100,
                color: Colors.amber,
                child: Text("Hello world,Stay home"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
