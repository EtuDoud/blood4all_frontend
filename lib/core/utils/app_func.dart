import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

logd(dynamic text) {
  if (kDebugMode) {
    print(text);
  }
}

navigateToNextPage(BuildContext context, Widget widget, {bool back = true}) {
  if (back) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => widget));
  } else {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => widget));
  }
}

navigateToNextPageWithTransition(BuildContext context, Widget widget, {bool back = true}) {
  if (back) {
    Navigator.push(
      context,
      PageRouteBuilder(pageBuilder: (BuildContext context, Animation animation, Animation secondaryAnimation) {
        return widget;
      }, transitionsBuilder:
          (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(1.0, 0.0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      }),
    );
  } else {
    Navigator.pushReplacement(
      context,
      PageRouteBuilder(pageBuilder: (BuildContext context, Animation animation, Animation secondaryAnimation) {
        return widget;
      }, transitionsBuilder:
          (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(1.0, 0.0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      }),
    );
  }
}