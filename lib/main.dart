import 'package:flutter/material.dart';

import 'package:dk_shop/index_page.dart';

Future main() async {
  runApp(
    MaterialApp(
      title: "renren",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // fontFamily: "PingFang-SC-Regular"
      ),
      home: IndexPage(),
    )
  );


}