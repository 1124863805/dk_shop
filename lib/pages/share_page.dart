import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

class SharePage extends StatelessWidget {

  Future test() async => await FlutterStatusbarcolor.setStatusBarColor(Colors.redAccent[400]);
  @override
  Widget build(BuildContext context) {

    test();
    return Scaffold(
      body:Center(
        child: Text('分享页面'),
      )
    );
  }
}