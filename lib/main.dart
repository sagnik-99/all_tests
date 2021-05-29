import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

void main() => runApp(MyApp());

class MyApp extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Testing background deminishing"),
        ),
        body: ListView(
          children: [
            TextButton(
              onPressed: () {},
              child: CupertinoTextSelectionToolbarButton.text(
                  text: "This is a test chat"),
            ),
          ],
        ),
      ),
    );
  }
}
