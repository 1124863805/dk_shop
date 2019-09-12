import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MemberPage extends StatelessWidget {
  // 自定义状态栏的颜色
  Future<void> test() async {
    await FlutterStatusbarcolor.setStatusBarColor(Colors.transparent);
    // if true while false black  Android only
    await FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 2678)..init(context);
    test();

    return Scaffold(
        backgroundColor: Color.fromRGBO(239, 239, 244, 1),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: SafeArea(
              child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: ScreenUtil().setWidth(750),
                          height: ScreenUtil().setWidth(93),
                          // color: Colors.red,
                        ),
                        Container(
                          width: ScreenUtil().setWidth(687),
                          height: ScreenUtil().setWidth(887),
                          decoration: BoxDecoration(
                            image: new DecorationImage(
                                image: new AssetImage("images/bg_content.png"),
                                fit: BoxFit.fill),
                          ),
                        ),
                        Container(
                          width: ScreenUtil().setWidth(750),
                          height: ScreenUtil().setWidth(42),
                          // color: Colors.red,
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: ScreenUtil().setWidth(35)),
                    child: Center(
                      child: ClipOval(
                        child: Image.asset(
                          "images/avatar01.jpg",
                          width: ScreenUtil().setWidth(160),
                          height: ScreenUtil().setWidth(160),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: ScreenUtil().setWidth(165)),
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: ScreenUtil().setWidth(110),
                            height: ScreenUtil().setWidth(40),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    width: ScreenUtil().setWidth(2)),
                                color: Color.fromRGBO(50, 50, 50, 1),
                                borderRadius: BorderRadius.circular(
                                    ScreenUtil().setWidth(20))),
                            child: Center(
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: ScreenUtil().setWidth(8),
                                        right: ScreenUtil().setWidth(4)),
                                    width: ScreenUtil().setWidth(24),
                                    height: ScreenUtil().setWidth(22),
                                    child: Image.asset("images/icon_vip.png"),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      new Text("淘淘员",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize:
                                                  ScreenUtil().setSp(20))),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(top: ScreenUtil().setWidth(46)),
                            child: Column(
                              children: <Widget>[
                                new Text("一直会闹的猫",
                                    style: TextStyle(
                                        color: Color.fromRGBO(68, 68, 68, 1),
                                        fontSize: ScreenUtil().setSp(36))),
                                new Text("距离下一等级还差888积分",
                                    style: TextStyle(
                                        color: Color.fromRGBO(118, 118, 118, 1),
                                        fontSize: ScreenUtil().setSp(22)))
                              ],
                            ),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(top: ScreenUtil().setWidth(89)),
                            width: ScreenUtil().setWidth(228),
                            height: ScreenUtil().setWidth(31),
                            child: new Image.asset(
                              "images/biaoti.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: ScreenUtil().setWidth(24),
                                left: ScreenUtil().setWidth(41)),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(
                                      top: ScreenUtil().setWidth(19)),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: ScreenUtil().setWidth(19)),
                                        width: ScreenUtil().setWidth(288),
                                        height: ScreenUtil().setWidth(114),
                                        color: Color.fromRGBO(246, 246, 246, 1),
                                        child: Center(
                                          child: Row(
                                            children: <Widget>[
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: ScreenUtil()
                                                        .setWidth(52)),
                                                width:
                                                    ScreenUtil().setWidth(52),
                                                height:
                                                    ScreenUtil().setWidth(52),
                                                child: Image.asset(
                                                    "images/icon_yongjin.png",
                                                    fit: BoxFit.fill),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: ScreenUtil()
                                                        .setWidth(16)),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    new Text("自购佣金",
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromARGB(
                                                                    86,
                                                                    86,
                                                                    86,
                                                                    1),
                                                            fontSize:
                                                                ScreenUtil()
                                                                    .setSp(
                                                                        24))),
                                                    new Text("奖励100%",
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromARGB(
                                                                    86,
                                                                    86,
                                                                    86,
                                                                    1),
                                                            fontSize:
                                                                ScreenUtil()
                                                                    .setSp(24)))
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: ScreenUtil().setWidth(19)),
                                        width: ScreenUtil().setWidth(288),
                                        height: ScreenUtil().setWidth(114),
                                        color: Color.fromRGBO(246, 246, 246, 1),
                                        child: Center(
                                          child: Row(
                                            children: <Widget>[
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: ScreenUtil()
                                                        .setWidth(52)),
                                                width:
                                                    ScreenUtil().setWidth(52),
                                                height:
                                                    ScreenUtil().setWidth(52),
                                                child: Image.asset(
                                                    "images/icon_yongjin.png",
                                                    fit: BoxFit.fill),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: ScreenUtil()
                                                        .setWidth(16)),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    new Text("自购佣金",
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromARGB(
                                                                    86,
                                                                    86,
                                                                    86,
                                                                    1),
                                                            fontSize:
                                                                ScreenUtil()
                                                                    .setSp(
                                                                        24))),
                                                    new Text("奖励100%",
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromARGB(
                                                                    86,
                                                                    86,
                                                                    86,
                                                                    1),
                                                            fontSize:
                                                                ScreenUtil()
                                                                    .setSp(24)))
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      top: ScreenUtil().setWidth(19)),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: ScreenUtil().setWidth(19)),
                                        width: ScreenUtil().setWidth(288),
                                        height: ScreenUtil().setWidth(114),
                                        color: Color.fromRGBO(246, 246, 246, 1),
                                        child: Center(
                                          child: Row(
                                            children: <Widget>[
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: ScreenUtil()
                                                        .setWidth(52)),
                                                width:
                                                    ScreenUtil().setWidth(52),
                                                height:
                                                    ScreenUtil().setWidth(52),
                                                child: Image.asset(
                                                    "images/icon_yongjin.png",
                                                    fit: BoxFit.fill),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: ScreenUtil()
                                                        .setWidth(16)),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    new Text("自购佣金",
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromARGB(
                                                                    86,
                                                                    86,
                                                                    86,
                                                                    1),
                                                            fontSize:
                                                                ScreenUtil()
                                                                    .setSp(
                                                                        24))),
                                                    new Text("奖励100%",
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromARGB(
                                                                    86,
                                                                    86,
                                                                    86,
                                                                    1),
                                                            fontSize:
                                                                ScreenUtil()
                                                                    .setSp(24)))
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: ScreenUtil().setWidth(19)),
                                        width: ScreenUtil().setWidth(288),
                                        height: ScreenUtil().setWidth(114),
                                        color: Color.fromRGBO(246, 246, 246, 1),
                                        child: Center(
                                          child: Row(
                                            children: <Widget>[
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: ScreenUtil()
                                                        .setWidth(52)),
                                                width:
                                                    ScreenUtil().setWidth(52),
                                                height:
                                                    ScreenUtil().setWidth(52),
                                                child: Image.asset(
                                                    "images/icon_yongjin.png",
                                                    fit: BoxFit.fill),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: ScreenUtil()
                                                        .setWidth(16)),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    new Text("自购佣金",
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromARGB(
                                                                    86,
                                                                    86,
                                                                    86,
                                                                    1),
                                                            fontSize:
                                                                ScreenUtil()
                                                                    .setSp(
                                                                        24))),
                                                    new Text("奖励100%",
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromARGB(
                                                                    86,
                                                                    86,
                                                                    86,
                                                                    1),
                                                            fontSize:
                                                                ScreenUtil()
                                                                    .setSp(24)))
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      top: ScreenUtil().setWidth(19)),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: ScreenUtil().setWidth(19)),
                                        width: ScreenUtil().setWidth(288),
                                        height: ScreenUtil().setWidth(114),
                                        color: Color.fromRGBO(246, 246, 246, 1),
                                        child: Center(
                                          child: Row(
                                            children: <Widget>[
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: ScreenUtil()
                                                        .setWidth(52)),
                                                width:
                                                    ScreenUtil().setWidth(52),
                                                height:
                                                    ScreenUtil().setWidth(52),
                                                child: Image.asset(
                                                    "images/icon_yongjin.png",
                                                    fit: BoxFit.fill),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: ScreenUtil()
                                                        .setWidth(16)),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    new Text("自购佣金",
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromARGB(
                                                                    86,
                                                                    86,
                                                                    86,
                                                                    1),
                                                            fontSize:
                                                                ScreenUtil()
                                                                    .setSp(
                                                                        24))),
                                                    new Text("奖励100%",
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromARGB(
                                                                    86,
                                                                    86,
                                                                    86,
                                                                    1),
                                                            fontSize:
                                                                ScreenUtil()
                                                                    .setSp(24)))
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(top: ScreenUtil().setWidth(46)),
                            width: ScreenUtil().setWidth(582),
                            height: ScreenUtil().setWidth(105),
                            child: Image.asset("images/buuton.png",
                                fit: BoxFit.fill),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Container(
                child: Stack(
                  children: <Widget>[
                    Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin:
                                EdgeInsets.only(top: ScreenUtil().setWidth(43)),
                            padding: EdgeInsets.only(
                                top: ScreenUtil().setWidth(18),
                                left: ScreenUtil().setWidth(25)),
                            width: ScreenUtil().setWidth(690),
                            height: ScreenUtil().setWidth(1111),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                    ScreenUtil().setWidth(20))),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(
                                      top: ScreenUtil().setWidth(84)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: ScreenUtil().setWidth(146)),
                                        child: new Text("A组好友12人",
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    48, 48, 48, 1),
                                                fontSize:
                                                    ScreenUtil().setSp(22))),
                                      ),
                                      Container(
                                        child: Row(
                                          children: <Widget>[
                                            ProgressWidget(0.1),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: ScreenUtil()
                                                      .setWidth(23)),
                                            ),
                                            new Text("90人",
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        153, 153, 153, 1),
                                                    fontSize:
                                                        ScreenUtil().setSp(28)))
                                          ],
                                        ),
                                      ),
                                      new Text("当前有效A组好友人数",
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  153, 153, 153, 1),
                                              fontSize: ScreenUtil().setSp(28)))
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      top: ScreenUtil().setWidth(66)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: ScreenUtil().setWidth(146)),
                                        child: new Text("A组好友12人",
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    48, 48, 48, 1),
                                                fontSize:
                                                    ScreenUtil().setSp(22))),
                                      ),
                                      Container(
                                        child: Row(
                                          children: <Widget>[
                                            ProgressWidget(0.3),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: ScreenUtil()
                                                      .setWidth(23)),
                                            ),
                                            new Text("90人",
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        153, 153, 153, 1),
                                                    fontSize:
                                                        ScreenUtil().setSp(28)))
                                          ],
                                        ),
                                      ),
                                      new Text("当前有效A组好友人数",
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  153, 153, 153, 1),
                                              fontSize: ScreenUtil().setSp(28)))
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      top: ScreenUtil().setWidth(75)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: ScreenUtil().setWidth(146)),
                                        child: new Text("A组好友12人",
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    48, 48, 48, 1),
                                                fontSize:
                                                    ScreenUtil().setSp(22))),
                                      ),
                                      Container(
                                        child: Row(
                                          children: <Widget>[
                                            ProgressWidget(1.0),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: ScreenUtil()
                                                      .setWidth(23)),
                                            ),
                                            new Text("90人",
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        153, 153, 153, 1),
                                                    fontSize:
                                                        ScreenUtil().setSp(28)))
                                          ],
                                        ),
                                      ),
                                      new Text("当前有效A组好友人数",
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  153, 153, 153, 1),
                                              fontSize: ScreenUtil().setSp(28)))
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      top: ScreenUtil().setWidth(76)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: ScreenUtil().setWidth(146)),
                                        child: new Text("A组好友12人",
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    48, 48, 48, 1),
                                                fontSize:
                                                    ScreenUtil().setSp(22))),
                                      ),
                                      Container(
                                        child: Row(
                                          children: <Widget>[
                                            ProgressWidget(0.8),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: ScreenUtil()
                                                      .setWidth(23)),
                                            ),
                                            new Text("90人",
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        153, 153, 153, 1),
                                                    fontSize:
                                                        ScreenUtil().setSp(28)))
                                          ],
                                        ),
                                      ),
                                      new Text("当前有效A组好友人数",
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  153, 153, 153, 1),
                                              fontSize: ScreenUtil().setSp(28)))
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      top: ScreenUtil().setWidth(86)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: ScreenUtil().setWidth(146)),
                                        child: new Text("A组好友12人",
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    48, 48, 48, 1),
                                                fontSize:
                                                    ScreenUtil().setSp(22))),
                                      ),
                                      Container(
                                        child: Row(
                                          children: <Widget>[
                                            ProgressWidget(0.4),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: ScreenUtil()
                                                      .setWidth(23)),
                                            ),
                                            new Text("90人",
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        153, 153, 153, 1),
                                                    fontSize:
                                                        ScreenUtil().setSp(28)))
                                          ],
                                        ),
                                      ),
                                      new Text("当前有效A组好友人数",
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  153, 153, 153, 1),
                                              fontSize: ScreenUtil().setSp(28)))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: ScreenUtil().setWidth(750),
                            height: ScreenUtil().setWidth(18),
                            // color: Colors.black,
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      top: ScreenUtil().setWidth(1098),
                      left: ScreenUtil().setWidth(370),
                      child: Container(
                        width: ScreenUtil().setWidth(302),
                        height: ScreenUtil().setWidth(74),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(54, 54, 54, 1),
                            borderRadius: BorderRadius.circular(
                                ScreenUtil().setWidth(37))),
                        child: Center(
                          child: new Text("邀请好友 赚大钱",
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontSize: ScreenUtil().setSp(30))),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: ScreenUtil().setWidth(56),
                    bottom: ScreenUtil().setWidth(31)),
                width: ScreenUtil().setWidth(750),
                height: ScreenUtil().setWidth(188),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(ScreenUtil().setWidth(20)),
                    color: Colors.white),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: ScreenUtil().setHeight(38)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(
                                      top: ScreenUtil().setWidth(5),
                                      right: ScreenUtil().setWidth(11)),
                                  child: ClipOval(
                                    child: Container(
                                      width: ScreenUtil().setWidth(12),
                                      height: ScreenUtil().setWidth(12),
                                      color: Color.fromRGBO(153, 153, 153, 1),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      top: ScreenUtil().setWidth(11),
                                      right: ScreenUtil().setWidth(10)),
                                  child: ClipOval(
                                    child: Container(
                                      width: ScreenUtil().setWidth(16),
                                      height: ScreenUtil().setWidth(16),
                                      color: Color.fromRGBO(153, 153, 153, 1),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: ClipOval(
                                    child: Container(
                                      width: ScreenUtil().setWidth(24),
                                      height: ScreenUtil().setWidth(24),
                                      color: Color.fromRGBO(153, 153, 153, 1),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: ScreenUtil().setWidth(28)),
                            child: new Text("关于A组、B组的定义",
                                style: TextStyle(
                                    color: Color.fromRGBO(18, 18, 18, 1),
                                    fontSize: ScreenUtil().setWidth(30))),
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(
                                      top: ScreenUtil().setWidth(5),
                                      right: ScreenUtil().setWidth(11)),
                                  child: ClipOval(
                                    child: Container(
                                      width: ScreenUtil().setWidth(24),
                                      height: ScreenUtil().setWidth(24),
                                      color: Color.fromRGBO(153, 153, 153, 1),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      top: ScreenUtil().setWidth(11),
                                      right: ScreenUtil().setWidth(10)),
                                  child: ClipOval(
                                    child: Container(
                                      width: ScreenUtil().setWidth(16),
                                      height: ScreenUtil().setWidth(16),
                                      color: Color.fromRGBO(153, 153, 153, 1),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: ClipOval(
                                    child: Container(
                                      width: ScreenUtil().setWidth(12),
                                      height: ScreenUtil().setWidth(12),
                                      color: Color.fromRGBO(153, 153, 153, 1),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: ScreenUtil().setHeight(26)),
                    ),
                    new Text("A组用户就是自己通过分享所关联的用户;",
                        style: TextStyle(
                            color: Color.fromRGBO(107, 107, 107, 1),
                            fontSize: ScreenUtil().setSp(24))),
                    new Text(" B组用户就是自己A组用户所关联的用户。",
                        style: TextStyle(
                            color: Color.fromRGBO(107, 107, 107, 1),
                            fontSize: ScreenUtil().setSp(24))),
                  ],
                ),
              )
            ],
          )),
        ));
  }
}

// 进度条
class ProgressWidget extends StatefulWidget {
  ProgressWidget(this.rate);
  double rate;
  @override
  _ProgressWidgetState createState() => _ProgressWidgetState();
}

class _ProgressWidgetState extends State<ProgressWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setWidth(564),
      height: ScreenUtil().setWidth(15),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(ScreenUtil().setWidth(7)),
          border: Border.all(color: Color.fromRGBO(222, 222, 222, 1),width: 1.0)
        ),
        child: ClipRRect(
        borderRadius: BorderRadius.circular(ScreenUtil().setWidth(7)),
        child: new LinearProgressIndicator(
          backgroundColor: Color.fromRGBO(255, 255, 255, 1),
          value: widget.rate,
          valueColor:
              new AlwaysStoppedAnimation<Color>(Color.fromRGBO(41, 41, 41, 1)),
        ),
      ),
      )
    );
  }
}
