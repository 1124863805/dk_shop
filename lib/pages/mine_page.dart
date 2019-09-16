import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

class MinePage extends StatelessWidget {
  // 自定义状态栏的颜色
  Future<void> test() async {
    await FlutterStatusbarcolor.setStatusBarColor(Colors.transparent);
    // if true while false black  Android only
    await FlutterStatusbarcolor.setStatusBarWhiteForeground(true);
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1796)..init(context);
    test();

    // //状态栏的高度 px
    // double statusBarHeight = ScreenUtil.statusBarHeight;

    // 图标Widget
    Widget _iconWidget(String url,String text,double size) {
      return Container(
        child: Column(
          children: <Widget>[
            Container(
              child: Image.asset(
                url,
                width: ScreenUtil().setWidth(size),
                height: ScreenUtil().setWidth(size),
              ),
            ),
            Container(
              child: new Text(
                text,
                style: TextStyle(
                    color: Color.fromRGBO(40, 40, 40, 1),
                    fontSize: ScreenUtil().setSp(28)),
              ),
            )
          ],
        ),
      );
    }

    Widget _income(String price,String text){
      return Container(
        child: Column(
          children: <Widget>[
            new Text(price,
                style: TextStyle(
                    color:
                    Color.fromRGBO(40, 40, 40, 1),
                    fontSize:
                    ScreenUtil().setWidth(34))),
            Padding(
                padding: EdgeInsets.only(
                    top: ScreenUtil().setWidth(15))),
            new Text(text,
                style: TextStyle(
                    color:
                    Color.fromRGBO(87, 87, 87, 1),
                    fontSize:
                    ScreenUtil().setWidth(26))),
          ],
        ),
      );
    }

    final incomeList = [_income("160","本月预估(元）"),_income("160","本月预估(元）"),_income("160","本月预估(元）")];



    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                _UserInfoWidget(),
                Positioned(
                  top: ScreenUtil().setWidth(298),
                  child: Container(
                    margin: EdgeInsets.only(left: ScreenUtil().setWidth(16)),
                    width: ScreenUtil().setWidth(720),
                    height: ScreenUtil().setWidth(305),
                    decoration: BoxDecoration(
                        image: new DecorationImage(
                            image: AssetImage("images/mine_income_bg.png"))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin:
                              EdgeInsets.only(top: ScreenUtil().setHeight(51)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: incomeList, //收益部分
                          ),
                        ),
                        Container(
                          margin:
                              EdgeInsets.only(top: ScreenUtil().setWidth(57)),
                          child: Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(
                                    left: ScreenUtil().setWidth(49)),
                                child: Text.rich(TextSpan(
                                    text: "可提现佣金：",
                                    style: TextStyle(
                                        color: Color.fromRGBO(87, 87, 87, 1),
                                        fontSize: ScreenUtil().setWidth(26)),
                                    children: [
                                      TextSpan(
                                        text: "￥",
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(17, 17, 17, 1),
                                            fontSize:
                                                ScreenUtil().setWidth(24)),
                                      ),
                                      TextSpan(
                                        text: "200",
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(17, 17, 17, 1),
                                            fontSize: ScreenUtil().setWidth(40),
                                            fontWeight: FontWeight.bold),
                                      )
                                    ])),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left: ScreenUtil().setWidth(279)),
                                child: ClipOval(
                                  child: Container(
                                      width: ScreenUtil().setWidth(74),
                                      height: ScreenUtil().setWidth(74),
                                      decoration: BoxDecoration(
                                          gradient: LinearGradient(colors: [
                                        Color.fromRGBO(68, 68, 68, 1),
                                        Color.fromRGBO(71, 71, 71, 1)
                                      ])),
                                      child: Center(
                                        child: Image.asset(
                                          "images/icon_jiantou.png",
                                          width: ScreenUtil().setWidth(38),
                                          height: ScreenUtil().setWidth(28),
                                        ),
                                      )),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(
                  left: ScreenUtil().setWidth(30),
                  top: ScreenUtil().setHeight(35)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(
                    "我的订单",
                    style: TextStyle(
                        color: Color.fromRGBO(40, 40, 40, 1),
                        fontSize: ScreenUtil().setSp(34)),
                  ),
                  Container(
                    height: ScreenUtil().setHeight(170),
                    margin: EdgeInsets.only(top: ScreenUtil().setHeight(35)),
                    child: GridView(
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4, //横轴三个子widget
                      ),
                      children: <Widget>[
                        _iconWidget("images/icon_daifukuan.png","待付款",52.0),
                        _iconWidget("images/icon_daifahua.png","待发货",52.0),
                        _iconWidget("images/icon_daishouhuo.png","待收货",52.0),
                        _iconWidget("images/icon_dingdan.png","全部订单",52.0),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  left: ScreenUtil().setWidth(30),
                  top: ScreenUtil().setHeight(35)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(
                    "我的服务",
                    style: TextStyle(
                        color: Color.fromRGBO(40, 40, 40, 1),
                        fontSize: ScreenUtil().setSp(34)),
                  ),
                  Container(
                    height: ScreenUtil().setHeight(400),
                    margin: EdgeInsets.only(top: ScreenUtil().setHeight(35)),
                    child: GridView(
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4, //横轴三个子widget
                          childAspectRatio: 1.5),
                      children: <Widget>[
                          InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, '/incomedesc');
                            },
                            child:  _iconWidget("images/icon_shouyi.png","收益详情",46.0),
                          ),
                        _iconWidget("images/icon_dingdanMixi.png","订单明细",46.0),
                        _iconWidget("images/icon_shouyi.png","提现明细",46.0),
                        _iconWidget("images/icon_friend.png","我的好友",46.0),
                        _iconWidget("images/icon_setting.png","功能设置",46.0),
                        _iconWidget("images/icon_contact.png","联系客服",46.0),
                        _iconWidget("images/icon_share.png","分享邀请",46.0),

                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  left: ScreenUtil().setWidth(30),
                  top: ScreenUtil().setHeight(35)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(
                    "我的服务",
                    style: TextStyle(
                        color: Color.fromRGBO(40, 40, 40, 1),
                        fontSize: ScreenUtil().setSp(34)),
                  ),
                  Container(
                    height: ScreenUtil().setHeight(400),
                    margin: EdgeInsets.only(top: ScreenUtil().setHeight(35)),
                    child: GridView(
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4, //横轴三个子widget
                          childAspectRatio: 1.5),
                      children: <Widget>[
                        _iconWidget("images/icon_qgjilu.png","抢购记录",46.0),
                        _iconWidget("images/icon_chongzhi.png","去充值",46.0),
                        _iconWidget("images/icon_duihuan.png","兑换记录",46.0),

                        _iconWidget("images/icon_youihuiquan.png","优惠券",46.0),
                        _iconWidget("images/icon_xiaodian.png","我的小店",46.0),
                        _iconWidget("images/icon_dizhi.png","我的地址",46.0),
                        _iconWidget("images/icon_yinhangka.png","银行卡",46.0),
                        _iconWidget("images/icon_qianggou.png","每日抢购",46.0),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _UserInfoWidget extends StatefulWidget {
  //状态栏的高度 px
  double statusBarHeight = ScreenUtil.statusBarHeight;
  @override
  __UserInfoWidgetState createState() => __UserInfoWidgetState();
}

class __UserInfoWidgetState extends State<_UserInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: ScreenUtil().setWidth(750),
          height: ScreenUtil().setWidth(478),
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromRGBO(68, 68, 68, 1),
            Color.fromRGBO(71, 71, 71, 1)
          ])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[_userInfo()],
          ),
        ),
        Container(
          width: ScreenUtil().setWidth(750),
          height: ScreenUtil().setWidth(125),
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
      ],
    );
  }

  // 用户信息
  Widget _userInfo() {
    return Container(
      margin: EdgeInsets.only(
          top: ScreenUtil().setWidth(138 - widget.statusBarHeight)),
      padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(30)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: ScreenUtil().setWidth(116),
            height: ScreenUtil().setWidth(116),
            child: ClipOval(
                child: Image.asset("images/avatar01.jpg", fit: BoxFit.fill)),
          ),
          Container(
            margin: EdgeInsets.only(left: ScreenUtil().setWidth(31)),
            child: Column(
              children: <Widget>[
                new Text("一只会闹的猫",
                    style: TextStyle(
                        color: Colors.white, fontSize: ScreenUtil().setSp(32))),
                Padding(
                  padding: EdgeInsets.only(top: ScreenUtil().setWidth(31)),
                ),
                Text.rich(TextSpan(
                    text: "抢购余额: ",
                    style: TextStyle(
                        color: Color.fromRGBO(139, 139, 139, 1),
                        fontSize: ScreenUtil().setSp(24)),
                    children: [
                      TextSpan(
                          text: "￥",
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontSize: ScreenUtil().setSp(24))),
                      TextSpan(
                          text: "150",
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontSize: ScreenUtil().setSp(34),
                              fontWeight: FontWeight.bold))
                    ]))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                left: ScreenUtil().setWidth(31),
                top: ScreenUtil().setWidth(7),
                right: ScreenUtil().setWidth(61)
            ),
            width: ScreenUtil().setWidth(118),
            height: ScreenUtil().setWidth(38),
            decoration: BoxDecoration(
                border: Border.all(
                    color: Color.fromRGBO(163, 163, 163, 1), width: 1.0),
                borderRadius: BorderRadius.circular(ScreenUtil().setWidth(19))),
            child: Center(
              child: new Text("积分:88",
                  style: TextStyle(
                      color: Color.fromRGBO(139, 139, 139, 1),
                      fontSize: ScreenUtil().setSp(24))),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: ScreenUtil().setWidth(74)),
            child: Row(
              children: <Widget>[
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, '/test');
                  },
                  child: Container(
                    child: new Text("去提现",
                        style: TextStyle(
                            color: Color.fromRGBO(190, 190, 190, 1),
                            fontSize: ScreenUtil().setSp(26))),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: ScreenUtil().setWidth(14),
                      top: ScreenUtil().setWidth(3)),
                  width: ScreenUtil().setWidth(14),
                  height: ScreenUtil().setWidth(28),
                  child:
                      Image.asset("images/icon_return.png", fit: BoxFit.fill),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
