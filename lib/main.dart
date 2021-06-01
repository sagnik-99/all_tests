import 'dart:math';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
           child: Scaffold(
           body: Expanded(
            child: Stack(
              children: [
                Container(
                  height: 248,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                        'https://github.com/flutter/plugins/raw/master/packages/video_player/video_player/doc/demo_ipod.gif?raw=true',
                      ),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    color: Colors.redAccent,
                  ),
                ),
                Positioned(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16.0)),
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Text(
                      "near offers",
                      style: TextStyle(
                        color: Color(0XFF4B6E82),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    padding: EdgeInsets.fromLTRB(8, 4, 8, 4),
                  ),
                  bottom: 10,
                  left: 5,
                ),
                Positioned(
                  child: IconButton(icon: Icon(Icons.inbox), onPressed: () {}),
                  bottom: -1,
                  right: -5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
