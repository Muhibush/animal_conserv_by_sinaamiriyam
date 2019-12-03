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
                              activeClassIndex=index;
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
                Expanded(
                  child: ListView(
                    children: <Widget>[
                      Center(
                        child: Container(
                            height: ScreenUtil.instance.setHeight(210),
                            width: ScreenUtil.instance.setWidth(327),
                            margin: EdgeInsets.only(
                                bottom: ScreenUtil.instance.setHeight(20)
                            ),
                            decoration: BoxDecoration(
                                color: Color(0xFF9C9288),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.3),
                                      offset: Offset(5,5),
                                      blurRadius: 7
                                  )
                                ],
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
                                      borderRadius: BorderRadius.all(Radius.circular(20)),
                                    ),
                                    child: Stack(
                                      children: <Widget>[
                                        ClipRRect(
                                          borderRadius: BorderRadius.all(Radius.circular(20)),
                                          child: Image.asset(
                                            'asset/map/map_1.png',
                                            height: ScreenUtil.instance.setHeight(210),
                                            width: ScreenUtil.instance.setWidth(150),
                                            color: Colors.white.withOpacity(0.05),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Padding(
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
                                        Positioned(
                                            left: ScreenUtil.instance.setWidth(80),
                                            top: ScreenUtil.instance.setWidth(80),
                                            child: Container(
                                              height: ScreenUtil.instance.setWidth(40),
                                              width: ScreenUtil.instance.setWidth(40),
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                  color: Colors.white.withOpacity(0.1),
                                                  shape: BoxShape.circle,
                                                  border: Border.all(
                                                      color: Color(0xFFFDCD00),
                                                      width: 0.2
                                                  )
                                              ),
                                              child: Container(
                                                height: ScreenUtil.instance.setWidth(5),
                                                width: ScreenUtil.instance.setWidth(5),
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFFDCD00),
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                            )
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Container(
                                    height: ScreenUtil.instance.setHeight(50),
                                    width: ScreenUtil.instance.setWidth(70),
                                    decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.2),
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
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  width: ScreenUtil.instance.setWidth(220),
                                  child: Image.asset(
                                    'asset/animal/humingbird.png',
                                    fit: BoxFit.cover,
                                  ),
                                )
                              ],
                            )
                        ),
                      ),
                      Center(
                        child: Container(
                            height: ScreenUtil.instance.setHeight(210),
                            width: ScreenUtil.instance.setWidth(327),
                            margin: EdgeInsets.only(
                                bottom: ScreenUtil.instance.setHeight(20)
                            ),
                            decoration: BoxDecoration(
                                color: Color(0xFF9C9288),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.3),
                                      offset: Offset(5,5),
                                      blurRadius: 7
                                  )
                                ],
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
                                      borderRadius: BorderRadius.all(Radius.circular(20)),
                                    ),
                                    child: Stack(
                                      children: <Widget>[
                                        ClipRRect(
                                          borderRadius: BorderRadius.all(Radius.circular(20)),
                                          child: Image.asset(
                                            'asset/map/map_1.png',
                                            height: ScreenUtil.instance.setHeight(210),
                                            width: ScreenUtil.instance.setWidth(150),
                                            color: Colors.white.withOpacity(0.05),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Padding(
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
                                        Positioned(
                                            left: ScreenUtil.instance.setWidth(80),
                                            top: ScreenUtil.instance.setWidth(80),
                                            child: Container(
                                              height: ScreenUtil.instance.setWidth(40),
                                              width: ScreenUtil.instance.setWidth(40),
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                  color: Colors.white.withOpacity(0.1),
                                                  shape: BoxShape.circle,
                                                  border: Border.all(
                                                      color: Color(0xFFFDCD00),
                                                      width: 0.2
                                                  )
                                              ),
                                              child: Container(
                                                height: ScreenUtil.instance.setWidth(5),
                                                width: ScreenUtil.instance.setWidth(5),
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFFDCD00),
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                            )
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Container(
                                    height: ScreenUtil.instance.setHeight(50),
                                    width: ScreenUtil.instance.setWidth(70),
                                    decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.2),
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
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  width: ScreenUtil.instance.setWidth(220),
                                  child: Image.asset(
                                    'asset/animal/humingbird.png',
                                    fit: BoxFit.cover,
                                  ),
                                )
                              ],
                            )
                        ),
                      ),
                      Center(
                        child: Container(
                            height: ScreenUtil.instance.setHeight(210),
                            width: ScreenUtil.instance.setWidth(327),
                            margin: EdgeInsets.only(
                                bottom: ScreenUtil.instance.setHeight(20)
                            ),
                            decoration: BoxDecoration(
                                color: Color(0xFF9C9288),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.3),
                                      offset: Offset(5,5),
                                      blurRadius: 7
                                  )
                                ],
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
                                      borderRadius: BorderRadius.all(Radius.circular(20)),
                                    ),
                                    child: Stack(
                                      children: <Widget>[
                                        ClipRRect(
                                          borderRadius: BorderRadius.all(Radius.circular(20)),
                                          child: Image.asset(
                                            'asset/map/map_1.png',
                                            height: ScreenUtil.instance.setHeight(210),
                                            width: ScreenUtil.instance.setWidth(150),
                                            color: Colors.white.withOpacity(0.05),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Padding(
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
                                        Positioned(
                                            left: ScreenUtil.instance.setWidth(80),
                                            top: ScreenUtil.instance.setWidth(80),
                                            child: Container(
                                              height: ScreenUtil.instance.setWidth(40),
                                              width: ScreenUtil.instance.setWidth(40),
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                  color: Colors.white.withOpacity(0.1),
                                                  shape: BoxShape.circle,
                                                  border: Border.all(
                                                      color: Color(0xFFFDCD00),
                                                      width: 0.2
                                                  )
                                              ),
                                              child: Container(
                                                height: ScreenUtil.instance.setWidth(5),
                                                width: ScreenUtil.instance.setWidth(5),
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFFDCD00),
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                            )
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Container(
                                    height: ScreenUtil.instance.setHeight(50),
                                    width: ScreenUtil.instance.setWidth(70),
                                    decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.2),
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
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  width: ScreenUtil.instance.setWidth(220),
                                  child: Image.asset(
                                    'asset/animal/humingbird.png',
                                    fit: BoxFit.cover,
                                  ),
                                )
                              ],
                            )
                        ),
                      ),
                      Center(
                        child: Container(
                            height: ScreenUtil.instance.setHeight(210),
                            width: ScreenUtil.instance.setWidth(327),
                            margin: EdgeInsets.only(
                                bottom: ScreenUtil.instance.setHeight(20)
                            ),
                            decoration: BoxDecoration(
                                color: Color(0xFF9C9288),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.3),
                                      offset: Offset(5,5),
                                      blurRadius: 7
                                  )
                                ],
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
                                      borderRadius: BorderRadius.all(Radius.circular(20)),
                                    ),
                                    child: Stack(
                                      children: <Widget>[
                                        ClipRRect(
                                          borderRadius: BorderRadius.all(Radius.circular(20)),
                                          child: Image.asset(
                                            'asset/map/map_1.png',
                                            height: ScreenUtil.instance.setHeight(210),
                                            width: ScreenUtil.instance.setWidth(150),
                                            color: Colors.white.withOpacity(0.05),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Padding(
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
                                        Positioned(
                                            left: ScreenUtil.instance.setWidth(80),
                                            top: ScreenUtil.instance.setWidth(80),
                                            child: Container(
                                              height: ScreenUtil.instance.setWidth(40),
                                              width: ScreenUtil.instance.setWidth(40),
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                  color: Colors.white.withOpacity(0.1),
                                                  shape: BoxShape.circle,
                                                  border: Border.all(
                                                      color: Color(0xFFFDCD00),
                                                      width: 0.2
                                                  )
                                              ),
                                              child: Container(
                                                height: ScreenUtil.instance.setWidth(5),
                                                width: ScreenUtil.instance.setWidth(5),
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFFDCD00),
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                            )
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Container(
                                    height: ScreenUtil.instance.setHeight(50),
                                    width: ScreenUtil.instance.setWidth(70),
                                    decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.2),
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
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  width: ScreenUtil.instance.setWidth(220),
                                  child: Image.asset(
                                    'asset/animal/humingbird.png',
                                    fit: BoxFit.cover,
                                  ),
                                )
                              ],
                            )
                        ),
                      ),
                      Center(
                        child: Container(
                            height: ScreenUtil.instance.setHeight(210),
                            width: ScreenUtil.instance.setWidth(327),
                            margin: EdgeInsets.only(
                                bottom: ScreenUtil.instance.setHeight(20)
                            ),
                            decoration: BoxDecoration(
                                color: Color(0xFF9C9288),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.3),
                                      offset: Offset(5,5),
                                      blurRadius: 7
                                  )
                                ],
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
                                      borderRadius: BorderRadius.all(Radius.circular(20)),
                                    ),
                                    child: Stack(
                                      children: <Widget>[
                                        ClipRRect(
                                          borderRadius: BorderRadius.all(Radius.circular(20)),
                                          child: Image.asset(
                                            'asset/map/map_1.png',
                                            height: ScreenUtil.instance.setHeight(210),
                                            width: ScreenUtil.instance.setWidth(150),
                                            color: Colors.white.withOpacity(0.05),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Padding(
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
                                        Positioned(
                                            left: ScreenUtil.instance.setWidth(80),
                                            top: ScreenUtil.instance.setWidth(80),
                                            child: Container(
                                              height: ScreenUtil.instance.setWidth(40),
                                              width: ScreenUtil.instance.setWidth(40),
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                  color: Colors.white.withOpacity(0.1),
                                                  shape: BoxShape.circle,
                                                  border: Border.all(
                                                      color: Color(0xFFFDCD00),
                                                      width: 0.2
                                                  )
                                              ),
                                              child: Container(
                                                height: ScreenUtil.instance.setWidth(5),
                                                width: ScreenUtil.instance.setWidth(5),
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFFDCD00),
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                            )
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Container(
                                    height: ScreenUtil.instance.setHeight(50),
                                    width: ScreenUtil.instance.setWidth(70),
                                    decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.2),
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
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  width: ScreenUtil.instance.setWidth(220),
                                  child: Image.asset(
                                    'asset/animal/humingbird.png',
                                    fit: BoxFit.cover,
                                  ),
                                )
                              ],
                            )
                        ),
                      ),
                    ],
                  ),
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
