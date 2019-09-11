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
           
              new Text("23"),
              new Text("23"),
              new Text("23"),
            ],
          )),
        ));
  }
}
