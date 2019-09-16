import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

class IncomeDescPage extends StatefulWidget {
  @override
  _IncomeDescPageState createState() => _IncomeDescPageState();
}

class _IncomeDescPageState extends State<IncomeDescPage> {
  Future<void> test() async {
    await FlutterStatusbarcolor.setStatusBarColor(Colors.white);
    // if true while false black  Android only
    await FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 2321)..init(context);
    test();
    return Scaffold(
        backgroundColor: Color.fromRGBO(239, 239, 244, 1),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black),
          title: new Text(
            "收益详情",
            style: TextStyle(
                color: Colors.black,
                fontSize: ScreenUtil().setSp(36),
                fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child:    Container(
                    margin: EdgeInsets.only(top: ScreenUtil().setWidth(26)),
                    width: ScreenUtil().setWidth(650),
                    height: ScreenUtil().setWidth(245),
                    padding: EdgeInsets.only(left: ScreenUtil().setWidth(38)),
                    decoration: BoxDecoration(
                        image: new DecorationImage(
                            image: AssetImage("images/bottomBorder.png"))),
                    child:Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: ScreenUtil().setWidth(61)),
                          child: Column(
                            children: <Widget>[
                              new Text("通过达客拼团赚了(元）",style: TextStyle(color: Colors.grey,fontSize: ScreenUtil().setSp(26))),
                              Padding(padding: EdgeInsets.only(top: ScreenUtil().setHeight(43))),
                              new Text("￥170",style: TextStyle(color: Color.fromRGBO(17, 17, 17, 1),fontSize: ScreenUtil().setSp(36))),
                            ],
                          ),
                        ),
                        Opacity(
                          opacity: 0.1,
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(38)),
                            width: 1,
                            height: ScreenUtil().setWidth(96),
                            color: Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: ScreenUtil().setWidth(61)),
                          child: Column(
                            children: <Widget>[
                              new Text("本月预估可提现(元）",style: TextStyle(color: Colors.grey,fontSize: ScreenUtil().setSp(26))),
                              Padding(padding: EdgeInsets.only(top: ScreenUtil().setHeight(43))),
                              new Text("￥100",style: TextStyle(color: Color.fromRGBO(17, 17, 17, 1),fontSize: ScreenUtil().setSp(36))),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                
                Container(
                  margin: EdgeInsets.only(top: ScreenUtil().setHeight(47)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                     Container(
                      padding:EdgeInsets.only(left: ScreenUtil().setWidth(30)),
                      child:  new Text(
                          "收益详情",
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontSize: ScreenUtil().setSp(34),
                          )),
                     ),

                      Center(
                        child: Container(
                          margin:EdgeInsets.only(top: ScreenUtil().setHeight(33)),
                          width: ScreenUtil().setWidth(690),
                          height: ScreenUtil().setWidth(180),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(ScreenUtil().setWidth(20))
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: ScreenUtil().setHeight(47)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding:EdgeInsets.only(left: ScreenUtil().setWidth(30)),
                        child:  new Text(
                            "收益详情",
                            style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontSize: ScreenUtil().setSp(34),
                            )),
                      ),

                      Center(
                        child: Container(
                          margin:EdgeInsets.only(top: ScreenUtil().setHeight(33)),
                          width: ScreenUtil().setWidth(690),
                          height: ScreenUtil().setWidth(180),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(ScreenUtil().setWidth(20))
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: ScreenUtil().setHeight(47)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding:EdgeInsets.only(left: ScreenUtil().setWidth(30)),
                        child:  new Text(
                            "收益详情",
                            style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontSize: ScreenUtil().setSp(34),
                            )),
                      ),

                      Center(
                        child: Container(
                          margin:EdgeInsets.only(top: ScreenUtil().setHeight(33)),
                          width: ScreenUtil().setWidth(690),
                          height: ScreenUtil().setWidth(180),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(ScreenUtil().setWidth(20))
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: ScreenUtil().setHeight(47)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding:EdgeInsets.only(left: ScreenUtil().setWidth(30)),
                        child:  new Text(
                            "收益详情",
                            style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontSize: ScreenUtil().setSp(34),
                            )),
                      ),

                      Center(
                        child: Container(
                          margin:EdgeInsets.only(top: ScreenUtil().setHeight(33)),
                          width: ScreenUtil().setWidth(690),
                          height: ScreenUtil().setWidth(180),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(ScreenUtil().setWidth(20))
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: ScreenUtil().setHeight(47)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding:EdgeInsets.only(left: ScreenUtil().setWidth(30)),
                        child:  new Text(
                            "收益详情",
                            style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontSize: ScreenUtil().setSp(34),
                            )),
                      ),

                      Center(
                        child: Container(
                          margin:EdgeInsets.only(top: ScreenUtil().setHeight(33)),
                          width: ScreenUtil().setWidth(690),
                          height: ScreenUtil().setWidth(180),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(ScreenUtil().setWidth(20))
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: ScreenUtil().setHeight(47)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding:EdgeInsets.only(left: ScreenUtil().setWidth(30)),
                        child:  new Text(
                            "收益详情",
                            style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontSize: ScreenUtil().setSp(34),
                            )),
                      ),

                      Center(
                        child: Container(
                          margin:EdgeInsets.only(top: ScreenUtil().setHeight(33)),
                          width: ScreenUtil().setWidth(690),
                          height: ScreenUtil().setWidth(180),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(ScreenUtil().setWidth(20))
                          ),
                        ),
                      )
                    ],
                  ),
                )
                




              ],
            ),
          ),
        );
  }
}
