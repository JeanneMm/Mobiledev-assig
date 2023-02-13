import 'package:flutter/material.dart';
// import 'package:helloworld/images.dart';

void main() => runApp(MyApp());
const barColor = Color(0xFF26ae60);
const bgColor = Color(0xFFDAE0E2);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.add), onPressed: () {}),
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Text('Instagram'),
        backgroundColor: barColor,
        centerTitle: true,
      ),
    );
  }
}
