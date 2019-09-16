import 'package:flutter/material.dart';

import 'package:dk_shop/index_page.dart';

import 'pages/take_money.dart';
import 'pages/income_page.dart';

Future main() async {


  final routes = {
    "/test":(context) => TakeMoneyPage(),
    "/incomedesc":(context) => IncomeDescPage()
  };

  runApp(
    MaterialApp(
      title: "renren",
      debugShowCheckedModeBanner: false,
      home: IndexPage(),
      routes: routes,
    )
  );


}