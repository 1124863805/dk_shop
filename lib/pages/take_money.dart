import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';



class TakeMoneyPage extends StatefulWidget {
  @override
  _TakeMoneyPageState createState() => _TakeMoneyPageState();
}

class _TakeMoneyPageState extends State<TakeMoneyPage> {

  Future<void> test() async {
    await FlutterStatusbarcolor.setStatusBarColor(Colors.white);
    // if true while false black  Android only
    await FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1624)..init(context);
    test();
    return Scaffold(
      backgroundColor: Color.fromRGBO(239, 239, 244, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        title: new Text("提现",style: TextStyle(color: Colors.black,fontSize: ScreenUtil().setSp(36),fontWeight: FontWeight.bold),),

      ),
      body:SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: ScreenUtil().setWidth(20)),
              padding: EdgeInsets.all(ScreenUtil().setWidth(30)),
              height: ScreenUtil().setWidth(492),
              width: ScreenUtil().setWidth(750),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text("真实姓名",style: TextStyle(color: Color.fromRGBO(87, 87, 87, 1),fontSize: ScreenUtil().setSp(32))),
                  TextField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        focusedBorder:InputBorder.none,
                        enabledBorder:InputBorder.none,
                        hintText: "请输入当前微信真实姓名"
                    ),
                      style:TextStyle(color: Color.fromRGBO(167, 167, 167, 1),fontSize: ScreenUtil().setSp(28))
                  ),
                  Opacity(
                    opacity: 0.1,
                    child: Container(
                      width: double.infinity,
                      height: 1,
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: ScreenUtil().setWidth(62))),
                  new Text("提现金额",style: TextStyle(color: Color.fromRGBO(87, 87, 87, 1),fontSize: ScreenUtil().setSp(32))),
                  TextField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        focusedBorder:InputBorder.none,
                        enabledBorder:InputBorder.none,
                        hintText: "请输入当前微信真实姓名",
                        prefixIcon: new Text("￥",style: TextStyle(color: Color.fromRGBO(40, 40, 40, 1),fontSize: ScreenUtil().setSp(50),fontWeight: FontWeight.bold))
                    ),
                      style:TextStyle(color: Color.fromRGBO(167, 167, 167, 1),fontSize: ScreenUtil().setSp(28))
                  ),
                  Opacity(
                    opacity: 0.1,
                    child: Container(
                      width: double.infinity,
                      height: 1,
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Text("可提现金额：121.99元",style: TextStyle(color: Color.fromRGBO(138, 138, 138, 1),fontSize: ScreenUtil().setSp(32))),
                          new Text("全部提现",style: TextStyle(color: Color.fromRGBO(40, 40, 40, 1),fontSize: ScreenUtil().setSp(32),))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),

            Center(
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: ScreenUtil().setWidth(50)),
                width: ScreenUtil().setWidth(690),
                height: ScreenUtil().setWidth(80),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(81, 81, 81, 1),
                    borderRadius: BorderRadius.circular(ScreenUtil().setWidth(40))
                ),
                child: new Text("立即提现",style: TextStyle(color: Colors.white,fontSize: ScreenUtil().setSp(32))),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: ScreenUtil().setWidth(30),top: ScreenUtil().setWidth(54)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text("说明",style: TextStyle(color: Color.fromRGBO(153, 153, 153, 1),fontSize: ScreenUtil().setSp(32))),
                  new Text("1.根据相关规定，微信必须完成实名认证才可提现\n"
                      "2.每月25日结算每月15日之前已审核成功的订单\n"
                      "3.15日后审核成功的订单，次月25日结算成功后才能提现\n"
                      "4.结算后的订单可随时提现（审核成功不代表可提现）\n"
                      "5.提现金额单笔最低￥10，最高￥5000，每日可提现4次\n"
                      "6.如有其它问题，请立即联系官方客服\n"
                      "7.提现技术服务费10%",
                      style: TextStyle(color: Color.fromRGBO(153, 153, 153, 1),fontSize: ScreenUtil().setSp(26),letterSpacing:1)
                  )
                ],
              ),
            )

          ],
        ),
      )
    );
  }
}
