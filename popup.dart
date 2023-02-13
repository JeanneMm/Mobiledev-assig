import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: PopupPage(),
    ),
  );
}

class PopupPage extends StatefulWidget {
  @override
  _PopupPageState createState() => _PopupPageState();
}

class _PopupPageState extends State<PopupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pop Up Menu'),
        centerTitle: true,
        actions: <Widget>[
          PopupOptinMenu(),
        ],
      ),
      body: Center(),
    );
  }
}

enum MenuOption { Send, Draft, Discard }

class PopupOptinMenu extends StatelessWidget {
  const PopupOptinMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<MenuOption>(
      itemBuilder: (BuildContext context) {
        return <PopupMenuEntry<MenuOption>>[
          PopupMenuItem(
            child: Text('Send'),
            value: MenuOption.Send,
          ),
          PopupMenuItem(
            child: Text('Draft'),
            value: MenuOption.Draft,
          ),
          PopupMenuItem(
            child: Text('Discard'),
            value: MenuOption.Discard,
          ),
        ];
      },
    );
  }
}
