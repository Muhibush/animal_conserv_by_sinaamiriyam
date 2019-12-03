import 'package:animal_conserv_by_sinaamiriyam/FadeAnimation.dart';
import 'package:animal_conserv_by_sinaamiriyam/listCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int activeClassIndex;
  IconData activeMenuIcon;
  int itemCount;
  List<String> listCategory = [
    "All",
    "Birds",
    "Fishes",
    "Reptile"
  ];
  
  List<IconData> listIcon = [
    Icons.work,
    Icons.apps,
    Icons.home
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    activeClassIndex = 0;
    activeMenuIcon = Icons.home;
    itemCount = listCategory[activeClassIndex].length;
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
                Expanded(
                  child: ListView(
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
                                    activeClassIndex=index;
                                    itemCount = listCategory[activeClassIndex].length;
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
                                      color: index==activeClassIndex?Color(0xFFFDCD00):Colors.transparent,
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
                      ListCard(
                        itemCount: itemCount,
                      )

                    ],
                  )
                ),
                Container(
                  height: ScreenUtil.instance.setHeight(70),
                  width: ScreenUtil.instance.setWidth(375),
                  padding: EdgeInsets.symmetric(
                    horizontal: paddingLeft
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: listIcon.map((icon) =>
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              activeMenuIcon = icon;
                            });
                          },
                          child: Container(
                            width: ScreenUtil.instance.setWidth(42),
                            height: ScreenUtil.instance.setWidth(42),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: activeMenuIcon==icon?Color(0xFFB9AEAE):Colors.transparent,
                              boxShadow: [
                                BoxShadow(
                                    color: activeMenuIcon==icon?Colors.black.withOpacity(0.1):Colors.transparent,
                                    offset: Offset(5,5),
                                    blurRadius: 5
                                )
                              ],
                            ),
                            child: Icon(
                              icon,
                              color: Colors.white,
                              size: ScreenUtil.instance.setWidth(20),
                            ),
                          ),
                        )
                    ).toList(),
                  ),
                )
              ],
        )),
      ),
    );
  }
}
