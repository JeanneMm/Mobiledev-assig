// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //using scaffold to provide a framework to implement our work
    return Scaffold(
      //scaffold will generate appBar which will allow us to use different properties
      //here we will use the navigation bar with the text "my first app" which will be in red
      appBar: AppBar(
        title: Text('Home'),
        //afterwards, we will give padding to our body text
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 100,
              width: 100,
              child: Container(color: Colors.red),
            ),
            SizedBox(height: 50),
            Container(width: 100, height: 100, color: Colors.green),
          ],
        ),
      ),
      //creating a floating button on our app
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
