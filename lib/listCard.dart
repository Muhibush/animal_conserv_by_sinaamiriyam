import 'package:animal_conserv_by_sinaamiriyam/FadeAnimation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListCard extends StatelessWidget {
  final int itemCount;

  const ListCard({Key key, this.itemCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 375, height: 812)..init(context);

    return ListView.builder(
      itemCount: itemCount,
      physics: ClampingScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context,index){

        print("PERHITUNGAN SAKTI: "+index.toString());
        return FadeAnimation(
            delay: 1+index/10,
            child: Center(
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
          );
      },
    );
  }
}
