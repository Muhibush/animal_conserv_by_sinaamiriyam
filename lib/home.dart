import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int activeIndex;
  List<String> listCategory = [
    "All",
    "Birds",
    "Fishes",
    "Reptile"
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    activeIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 375, height: 812)..init(context);
    double paddingLeft = ScreenUtil.instance.setWidth(24);

    return Material(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff504944),
              Color(0xffA28E8F),
            ],
          ),
        ),
        child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: paddingLeft,
                    vertical: ScreenUtil.instance.setHeight(29),
//                    vertical: ScreenUtil.instance.setWidth(24),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(
                        Icons.subject,
                        size: ScreenUtil.instance.setHeight(35),
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.search,
                        size: ScreenUtil.instance.setHeight(35),
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: paddingLeft,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Discover',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: ScreenUtil.instance.setSp(28),
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(
                        height: ScreenUtil.instance.setHeight(6),
                      ),
                      Text(
                        'Protect our earth together.',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: ScreenUtil.instance.setSp(15),
                          color: Colors.white.withOpacity(0.4),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: ScreenUtil.instance.setHeight(108),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: listCategory.length,
                    itemBuilder: (context, index){
                      return Center(
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              activeIndex=index;
                            });
                          },
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 500),
                            margin: EdgeInsets.only(
                              left: index==0?paddingLeft:0
                            ),
                            height: ScreenUtil.instance.setHeight(31),
                            padding: EdgeInsets.symmetric(
                                horizontal: ScreenUtil.instance.setWidth(20)
                            ),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: index==activeIndex?Color(0xFFFDCD00):Colors.transparent,
                                borderRadius: BorderRadius.all(Radius.circular(25))
                            ),
                            child: Text(
                              listCategory[index],
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: ScreenUtil.instance.setSp(15),
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Center(
                  child: Container(
                    height: ScreenUtil.instance.setHeight(210),
                    width: ScreenUtil.instance.setWidth(327),
                    decoration: BoxDecoration(
                      color: Color(0xFF9C9288),
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: Stack(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            height: ScreenUtil.instance.setHeight(210),
                            width: ScreenUtil.instance.setWidth(150),
                            decoration: BoxDecoration(
                                color: Color(0xFF525145),
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.only(
                              left: ScreenUtil.instance.setWidth(16),
                              right: ScreenUtil.instance.setWidth(16),
                              bottom: ScreenUtil.instance.setHeight(18)
                            ),
                            child: Text(
                              'Trinidad And Tobago',
                              style: TextStyle(
                                fontSize: ScreenUtil.instance.setSp(16),
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            height: ScreenUtil.instance.setHeight(50),
                            width: ScreenUtil.instance.setWidth(70),
                            decoration: BoxDecoration(
                                color: Color(0xFFC3B8B7),
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(20),
                                  topLeft: Radius.circular(20)
                                )
                            ),
                            alignment: Alignment.center,
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: ScreenUtil.instance.setWidth(14),
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    )
                  ),
                ),
                SizedBox(
                  height: ScreenUtil.instance.setHeight(20),
                ),
                Center(
                  child: Container(
                      height: ScreenUtil.instance.setHeight(210),
                      width: ScreenUtil.instance.setWidth(327),
                      decoration: BoxDecoration(
                          color: Color(0xFF9C9288),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Stack(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              height: ScreenUtil.instance.setHeight(210),
                              width: ScreenUtil.instance.setWidth(150),
                              decoration: BoxDecoration(
                                  color: Color(0xFF525145),
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                            ),
                          )
                        ],
                      )
                  ),
                ),
              ],
        )),
      ),
    );
  }
}
