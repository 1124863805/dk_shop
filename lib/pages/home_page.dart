import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

class HomePage extends StatelessWidget {
  // 自定义状态栏的颜色
  Future<void> test() async {
    await FlutterStatusbarcolor.setStatusBarColor(Colors.transparent);
    // if true while false black  Android only
    await FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
  }

  final items = new List<String>.generate(10000, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 2071)..init(context);
    test();

    final tarBar = [
      Container(
        padding: EdgeInsets.only(top: ScreenUtil().setWidth(5)),
        margin: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(56)),
        child: Column(
          children: <Widget>[
            new Text("综合",
                style: TextStyle(
                    color: Color.fromRGBO(68, 68, 68, 1),
                    fontSize: ScreenUtil().setWidth(30),
                    fontWeight: FontWeight.bold)),
            new Text("热门推荐",
                style: TextStyle(
                    color: Color.fromRGBO(91, 91, 91, 1),
                    fontSize: ScreenUtil().setWidth(22))),
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.only(top: ScreenUtil().setWidth(20)),
        margin: EdgeInsets.symmetric(
          horizontal: ScreenUtil().setWidth(56),
        ),
        child: Column(
          children: <Widget>[
            new Text("佣金",
                style: TextStyle(
                    color: Color.fromRGBO(68, 68, 68, 1),
                    fontSize: ScreenUtil().setWidth(30),
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.only(top: ScreenUtil().setWidth(20)),
        margin: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(56)),
        child: Column(
          children: <Widget>[
            new Text("价格",
                style: TextStyle(
                    color: Color.fromRGBO(68, 68, 68, 1),
                    fontSize: ScreenUtil().setWidth(30),
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.only(top: ScreenUtil().setWidth(20)),
        margin: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(56)),
        child: Column(
          children: <Widget>[
            new Text("销量",
                style: TextStyle(
                    color: Color.fromRGBO(68, 68, 68, 1),
                    fontSize: ScreenUtil().setWidth(30),
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    ];
    return Scaffold(
        backgroundColor: Color.fromRGBO(239, 239, 244, 1),
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                width: ScreenUtil().setWidth(750),
                height: ScreenUtil().setWidth(200),
                color: Colors.white,
                child: SafeArea(
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: ScreenUtil().setWidth(46)),
                        width: ScreenUtil().setWidth(690),
                        height: ScreenUtil().setWidth(68),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(233, 233, 233, 1),
                            borderRadius: BorderRadius.circular(
                                ScreenUtil().setWidth(34))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: ScreenUtil().setWidth(26),
                              height: ScreenUtil().setWidth(26),
                              decoration: BoxDecoration(
                                  image: new DecorationImage(
                                      image: AssetImage(
                                          "images/icon_search.png"))),
                            ),
                            new Text(
                              " 复制搜索拼多多优惠券",
                              style: TextStyle(
                                  color: Color.fromRGBO(186, 186, 186, 1),
                                  fontSize: ScreenUtil().setSp(26)),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          child: Column(
                            children: <Widget>[
                              Container(
                                width: ScreenUtil().setWidth(750),
                                height: ScreenUtil().setWidth(71),
                                color: Colors.white,
                              ),
                              Container(
                                width: ScreenUtil().setWidth(750),
                                height: ScreenUtil().setWidth(254),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          child: Center(
                            child: Container(
                              width: ScreenUtil().setWidth(690),
                              height: ScreenUtil().setWidth(299),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/banner1.jpg"),
                                  fit: BoxFit.fill
                                )
                              ),
                              // color: Colors.redAccent,
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: ScreenUtil().setWidth(30)),
                      width: ScreenUtil().setWidth(750),
                      height: ScreenUtil().setWidth(80),
                      color: Colors.white,
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                                top: ScreenUtil().setWidth(10),
                                right: ScreenUtil().setWidth(30)),
                            width: ScreenUtil().setWidth(130),
                            height: ScreenUtil().setWidth(37),
                            decoration: BoxDecoration(
                                image: new DecorationImage(
                                    image: AssetImage("images/icon_ad.png"))),
                          ),
                          new Text(
                            " 热烈庆祝人人购商城上线！祝大家购物愉快！",
                            style: TextStyle(
                                color: Color.fromRGBO(186, 186, 186, 1),
                                fontSize: ScreenUtil().setSp(26)),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                          vertical: ScreenUtil().setWidth(27)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            width: ScreenUtil().setWidth(165),
                            height: ScreenUtil().setWidth(169),
                            color: Colors.white,
                            child: Container(
                              margin: EdgeInsets.only(
                                  top: ScreenUtil().setWidth(33)),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(
                                        bottom: ScreenUtil().setWidth(15)),
                                    width: ScreenUtil().setWidth(58),
                                    height: ScreenUtil().setWidth(58),
                                    decoration: BoxDecoration(
                                        image: new DecorationImage(
                                            image: AssetImage(
                                                "images/icon_qingcang.png"))),
                                  ),
                                  new Text("品牌清仓",
                                      style: TextStyle(
                                          color: Color.fromRGBO(51, 51, 51, 1),
                                          fontSize: ScreenUtil().setSp(24),
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: ScreenUtil().setWidth(165),
                            height: ScreenUtil().setWidth(169),
                            color: Colors.white,
                            child: Container(
                              margin: EdgeInsets.only(
                                  top: ScreenUtil().setWidth(33)),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(
                                        bottom: ScreenUtil().setWidth(15)),
                                    width: ScreenUtil().setWidth(58),
                                    height: ScreenUtil().setWidth(58),
                                    decoration: BoxDecoration(
                                        image: new DecorationImage(
                                            image: AssetImage(
                                                "images/icon_tuijian.png"))),
                                  ),
                                  new Text("店铺推荐",
                                      style: TextStyle(
                                          color: Color.fromRGBO(51, 51, 51, 1),
                                          fontSize: ScreenUtil().setSp(24),
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: ScreenUtil().setWidth(165),
                            height: ScreenUtil().setWidth(169),
                            color: Colors.white,
                            child: Container(
                              margin: EdgeInsets.only(
                                  top: ScreenUtil().setWidth(33)),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(
                                        bottom: ScreenUtil().setWidth(15)),
                                    width: ScreenUtil().setWidth(58),
                                    height: ScreenUtil().setWidth(58),
                                    decoration: BoxDecoration(
                                        image: new DecorationImage(
                                            image: AssetImage(
                                                "images/icon_baoyou.png"))),
                                  ),
                                  new Text("1.9包邮",
                                      style: TextStyle(
                                          color: Color.fromRGBO(51, 51, 51, 1),
                                          fontSize: ScreenUtil().setSp(24),
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: ScreenUtil().setWidth(165),
                            height: ScreenUtil().setWidth(169),
                            color: Colors.white,
                            child: Container(
                              margin: EdgeInsets.only(
                                  top: ScreenUtil().setWidth(33)),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(
                                        bottom: ScreenUtil().setWidth(15)),
                                    width: ScreenUtil().setWidth(58),
                                    height: ScreenUtil().setWidth(58),
                                    decoration: BoxDecoration(
                                        image: new DecorationImage(
                                            image: AssetImage(
                                                "images/icon_jifen.png"))),
                                  ),
                                  new Text("积分专区",
                                      style: TextStyle(
                                          color: Color.fromRGBO(51, 51, 51, 1),
                                          fontSize: ScreenUtil().setSp(24),
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: ScreenUtil().setWidth(165),
                      height: ScreenUtil().setWidth(89),
                      color: Colors.white,
                      child: Container(
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.zero,
                          itemCount: 4,
                          itemBuilder: (BuildContext context, int index) {
                            return tarBar[index];
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return Opacity(
                              opacity: 0.1,
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    vertical: ScreenUtil().setWidth(29)),
                                width: ScreenUtil().setWidth(2),
                                height: ScreenUtil().setWidth(10),
                                color: Color.fromRGBO(68, 68, 68, 1),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    ListView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: 2,
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return Center(
                            child: Container(
                              margin: EdgeInsets.only(
                                  top: ScreenUtil().setWidth(21)),
                              width: ScreenUtil().setWidth(710),
                              height: ScreenUtil().setWidth(483),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(
                                      ScreenUtil().setWidth(10))),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Stack(
                                    children: <Widget>[
                                      Container(
                                        width: ScreenUtil().setWidth(710),
                                        height: ScreenUtil().setWidth(321),
                                        decoration: BoxDecoration(
                                            image: new DecorationImage(
                                                image: AssetImage(
                                                    "images/goods1.jpg.webp"),
                                                fit: BoxFit.fill),
                                            borderRadius: BorderRadius.circular(
                                                ScreenUtil().setWidth(10))),
                                      ),
                                      Positioned(
                                        top: ScreenUtil().setWidth(253),
                                        child: Opacity(
                                          opacity: 0.75,
                                          child: Container(
                                            alignment: Alignment.centerLeft,
                                            padding: EdgeInsets.only(
                                                left:
                                                    ScreenUtil().setWidth(21)),
                                            width: ScreenUtil().setWidth(710),
                                            height: ScreenUtil().setWidth(68),
                                            color: Color.fromRGBO(0, 0, 0, 1),
                                            child: new Text(
                                                "河南农家山上散养新鲜土鸡蛋自养 新鲜",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: ScreenUtil()
                                                        .setSp(26))),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: ScreenUtil().setHeight(30)),
                                    padding: EdgeInsets.only(
                                        left: ScreenUtil().setWidth(21)),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text.rich(TextSpan(
                                                text: "券后价",
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        167, 167, 167, 1),
                                                    fontSize:
                                                        ScreenUtil().setSp(22)),
                                                children: [
                                                  TextSpan(
                                                      text: "￥",
                                                      style: TextStyle(
                                                          color: Color.fromRGBO(
                                                              255, 18, 18, 1),
                                                          fontSize: ScreenUtil()
                                                              .setSp(22))),
                                                  TextSpan(
                                                      text: "5.90",
                                                      style: TextStyle(
                                                          color: Color.fromRGBO(
                                                              255, 18, 18, 1),
                                                          fontSize: ScreenUtil()
                                                              .setSp(42))),
                                                  TextSpan(text: "   "),
                                                  TextSpan(
                                                      text: "原价",
                                                      style: TextStyle(
                                                          color: Color.fromRGBO(
                                                              127, 127, 127, 1),
                                                          fontSize: ScreenUtil()
                                                              .setSp(22))),
                                                  TextSpan(
                                                      text: "￥12.85",
                                                      style: TextStyle(
                                                          decoration:
                                                              TextDecoration
                                                                  .lineThrough,
                                                          color: Color.fromRGBO(
                                                              127, 127, 127, 1),
                                                          fontSize: ScreenUtil()
                                                              .setSp(22))),
                                                ])),
                                            Container(
                                              margin: EdgeInsets.only(
                                                  right: ScreenUtil()
                                                      .setWidth(71)),
                                              child: new Text("已售3761件",
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          127, 127, 127, 1),
                                                      fontSize: ScreenUtil()
                                                          .setSp(22))),
                                            )
                                          ],
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top: ScreenUtil()
                                                    .setHeight(18))),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                              alignment: Alignment.centerLeft,
                                              padding: EdgeInsets.only(
                                                  left: ScreenUtil()
                                                      .setWidth(18)),
                                              width: ScreenUtil().setWidth(126),
                                              height: ScreenUtil().setWidth(43),
                                              decoration: BoxDecoration(
                                                  image: new DecorationImage(
                                                      image: AssetImage(
                                                          "images/icon_quan.png"))),
                                              child: new Text("券￥6",
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          235, 150, 33, 1),
                                                      fontSize: ScreenUtil()
                                                          .setSp(24))),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                  right: ScreenUtil()
                                                      .setWidth(23)),
                                              alignment: Alignment.center,
                                              width: ScreenUtil().setWidth(201),
                                              height: ScreenUtil().setWidth(60),
                                              decoration: BoxDecoration(
                                                  color: Color.fromRGBO(
                                                      62, 62, 62, 1),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          ScreenUtil()
                                                              .setWidth(30))),
                                              child: new Text("分享赚",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: ScreenUtil()
                                                          .setSp(24))),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        })
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
