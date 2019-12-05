import 'package:animal_conserv_by_sinaamiriyam/FadeAnimation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailPage extends StatefulWidget {
  final String heroTag;

  const DetailPage({Key key, this.heroTag}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 375, height: 812)..init(context);
    double paddingLeft = ScreenUtil.instance.setWidth(24);
    int widhtRightSide = 130;
    int widhtLefttSide = 375 - widhtRightSide;

    return Material(
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff4A423F),
                  Color(0xff9D8B8B),
                ],
              ),
            ),
          ),
          FadeAnimation(
            fadeDirection: FadeDirection.left,
            delay: 1,
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: ScreenUtil.instance.setWidth(widhtRightSide),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(30)
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF3D3730),
                      Color(0xFF837576),
                    ],
                  ),
                ),
                child: SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                          top: ScreenUtil.instance.setHeight(29)
                        ),
                        height: ScreenUtil.instance.setHeight(31),
                        width: ScreenUtil.instance.setWidth(70),
                        padding: EdgeInsets.symmetric(
                            horizontal: ScreenUtil.instance.setWidth(20)
                        ),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.1),
                            borderRadius: BorderRadius.all(Radius.circular(25))
                        ),
                        child: Text(
                          'Skip',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: ScreenUtil.instance.setSp(12),
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          bottom: ScreenUtil.instance.setHeight(29)
                        ),
                        height: ScreenUtil.instance.setHeight(60),
                        width: ScreenUtil.instance.setWidth(70),
                        padding: EdgeInsets.symmetric(
                            horizontal: ScreenUtil.instance.setWidth(20)
                        ),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color(0xFFFDCD00),
                            borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: ScreenUtil.instance.setWidth(20),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SafeArea(
              child: Container(
                width: ScreenUtil.instance.setWidth(widhtLefttSide),
                padding: EdgeInsets.symmetric(
                  horizontal: paddingLeft
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                          top: ScreenUtil.instance.setHeight(29)
                      ),
                      width: ScreenUtil.instance.setWidth(50),
                      height: ScreenUtil.instance.setHeight(31),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: ScreenUtil.instance.setWidth(25),
                            height: ScreenUtil.instance.setHeight(5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                          ),
                          Container(
                            width: ScreenUtil.instance.setHeight(5),
                            height: ScreenUtil.instance.setHeight(5),
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.5),
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                          ),
                          Container(
                            width: ScreenUtil.instance.setHeight(5),
                            height: ScreenUtil.instance.setHeight(5),
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.5),
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(child: Container(),),

                    FadeAnimation(
                      fadeDirection: FadeDirection.top,
                      delay: 1.6,
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: ScreenUtil.instance.setWidth(5),
                            height: ScreenUtil.instance.setWidth(5),
                            decoration: BoxDecoration(
                                color: Color(0xFFFDCD00),
                                shape: BoxShape.circle
                            ),
                          ),
                          SizedBox(
                            width: ScreenUtil.instance.setWidth(5),
                          ),
                          Text(
                            'Hummingbird',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: ScreenUtil.instance.setSp(20),
                                fontWeight: FontWeight.w700
                            ),
                          )
                        ],
                      ),
                    ),

                    FadeAnimation(
                      fadeDirection: FadeDirection.top,
                      delay: 1.4,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: paddingLeft
                        ),
                        child: Text(
                          'Hummingbirds are birds native to the Americas and '
                              'constitute the biological family Trochilidae. '
                              'They are the smallest of birds, most species '
                              'measuring 7.5–13 cm (3–5 in) in length. The '
                              'smallest extant bird species is the 5 cm '
                              '(2.0 in) bee hummingbird, which weighs less '
                              'than 2.0 g (0.07 oz). They are known as '
                              'hummingbirds because of the humming sound '
                              'created by their beating wings, which flap at'
                              ' high frequencies audible to humans. They hover '
                              'in mid-air at rapid wing-flapping rates, which '
                              'vary from around 12 beats per second in the '
                              'largest species, to in excess of 80 in some of '
                              'the smallest. Of those species that have been '
                              'measured in wind tunnels, their top speeds '
                              'exceed 15 m/s (54 km/h; 34 mph) and some '
                              'species can dive at speeds in excess of 22'
                              ' m/s (79 km/h; 49 mph).',
                          style: TextStyle(
                            fontSize: ScreenUtil.instance.setSp(13),
                            color: Colors.white,
                          ),
                          maxLines: 10,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                        )
                      ),
                    ),

                    FadeAnimation(
                      fadeDirection: FadeDirection.top,
                      delay: 1.2,
                      child: Container(
                        margin: EdgeInsets.only(
                          bottom: ScreenUtil.instance.setHeight(29),
                        ),
                        height: ScreenUtil.instance.setHeight(60),
                        padding: EdgeInsets.symmetric(
                            horizontal: ScreenUtil.instance.setWidth(20)
                        ),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                        child: Text(
                          'Donate',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: ScreenUtil.instance.setSp(12),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
          Positioned(
            bottom: ScreenUtil.instance.setHeight(-120),
            right: ScreenUtil.instance.setWidth(-200),
            height: ScreenUtil.instance.setHeight(812),
            child: Hero(
              tag: widget.heroTag,
              child: Image.asset(
                'asset/animal/humingbird.png',
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
