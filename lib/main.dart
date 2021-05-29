import 'package:all_tests/view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() => runApp(ProviderScope(child: MyApp()));

class MyApp extends HookWidget {
  @override
  Widget build(BuildContext context) {
    var state=useProvider(viewModel).state;
    var views=useProvider(viewModel);
    return MaterialApp(
      //theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Testing background deminishing"),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: MaterialButton(
                color: state?Colors.green:Colors.blueAccent,
                onPressed: () {
                  views.changeState();
                },
                child: Text("This is a test chat"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: MaterialButton(
                color: Colors.green,
                onPressed: () {},
                child: Text("This is a test chat"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: MaterialButton(
                color: Colors.green,
                onPressed: () {},
                child: Text("This is a test chat"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: MaterialButton(
                color: Colors.green,
                onPressed: () {},
                child: Text("This is a test chat"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: MaterialButton(
                color: Colors.green,
                onPressed: () {},
                child: Text("This is a test chat"),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
