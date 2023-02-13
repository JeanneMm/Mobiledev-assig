import 'package:flutter/material.dart';
import 'image_banner.dart';
// import 'package:helloworld/images.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
  String title = 'Fitted Box';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // The title text which will be shown on the action bar
          title: Text(title),
          centerTitle: true,
        ),
        body: FittedBox(
          child: rowOfImages(),
        ));
  }

  Widget rowOfImages() {
    return Row(
      children: [
        ImageBanner("assets/images/cap.jpg"),
        ImageBanner("assets/images/cap.jpg")
      ],
    );
  }
}
