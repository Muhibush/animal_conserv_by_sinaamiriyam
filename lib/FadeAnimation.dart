import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;
  final FadeDirection fadeDirection;

  const FadeAnimation({Key key, this.delay, this.child, this.fadeDirection}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tween = MultiTrackTween([
      Track("opacity").add(Duration(milliseconds: 500), Tween(begin: 0.0, end: 1.0)),
      Track("translate").add(
          Duration(milliseconds: 500), Tween(begin: -30.0, end: 0.0),
          curve: Curves.easeOut)
    ]);

    return ControlledAnimation(
      delay: Duration(milliseconds: (500 * delay).round()),
      duration: tween.duration,
      tween: tween,
      child: child,
      builderWithChild: (context, child, animation) => Opacity(
        opacity: animation["opacity"],
        child: Transform.translate(
            offset: Offset(
                (fadeDirection==FadeDirection.top||fadeDirection==FadeDirection.bottom)
                    ?0
                    :animation["translate"]*(fadeDirection==FadeDirection.left?-1:1),
                (fadeDirection==FadeDirection.left||fadeDirection==FadeDirection.right)
                    ?0
                    :animation["translate"]*(fadeDirection==FadeDirection.top?-1:1),
            ),
            child: child
        ),
      ),
    );
  }
}

enum FadeDirection{
  top,
  bottom,
  right,
  left
}