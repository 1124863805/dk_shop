import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'pages/home_page.dart';
import 'pages/member_pages.dart';
import 'pages/mine_page.dart';
import 'pages/share_page.dart';
import 'pages/take_money.dart';
import 'pages/income_page.dart';




class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {


  static Widget _bottomImges(String url){
    return Image.asset(url, width:25, height: 25,fit: BoxFit.cover);
  }

  // 底部导航图片
  final List<BottomNavigationBarItem> bottomTabs = [
    BottomNavigationBarItem(
      icon: _bottomImges("images/icon_home_nomal.png"),
      activeIcon: _bottomImges("images/icon_home_select.png"),
      title:Text('首页')
    ),
    BottomNavigationBarItem(
      icon: _bottomImges("images/icon_find_nomal.png"),
      activeIcon: _bottomImges("images/icon_find_select.png"),
      title:Text('发现')
    ),
    BottomNavigationBarItem(
      icon: _bottomImges("images/icon_member_nomal.png"),
      activeIcon: _bottomImges("images/icon_member_select.png"),
      title:Text('会员')
    ),
     BottomNavigationBarItem(
      icon: _bottomImges("images/icon_wode_nomal.png"),
      activeIcon: _bottomImges("images/icon_wode_select.png"),
      title:Text('我的')
    ),
  ];

  // 底部导航连接
  final List tabBodies = [
    HomePage(),
//    SharePage(),
    IncomeDescPage(),
    MemberPage(),
    MinePage()
  ];

  int currentIndex = 0;
  var currentPage;

  @override
  void initState() {
    currentPage = tabBodies[currentIndex];
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 245, 245, 1.0),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        items: bottomTabs,
        unselectedFontSize: 10,
        selectedFontSize: 10,
        unselectedItemColor: Color.fromRGBO(171, 171, 171, 1),
        selectedItemColor: Color.fromRGBO(17, 17, 17, 1),
        onTap: (index){
          setState(() {
            currentIndex = index;
            currentPage = tabBodies[currentIndex];
          });
        },
      ),
      body: currentPage,
    );
  }
}