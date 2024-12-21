import 'package:flutter/cupertino.dart' show CupertinoPageRoute;
import 'package:flutter/material.dart' show GlobalKey, NavigatorState, Widget;
import 'package:injectable/injectable.dart';

@lazySingleton
class NavigationService {
  const NavigationService(this.navigationKey);

  final GlobalKey<NavigatorState> navigationKey;

  Future<T?> push<T extends Object?>(Widget screen) {
    return navigationKey.currentState!.push(
      CupertinoPageRoute<T>(
        builder: (context) => screen,
      ),
    );
  }

  Future<T?> pushAndRemoveUntil<T extends Object?>(
    Widget screen,
  ) {
    return navigationKey.currentState!.pushAndRemoveUntil(
      CupertinoPageRoute<T>(
        builder: (context) => screen,
      ),
      (route) => false,
    );
  }

  void pop<T extends Object?>({T? data}) {
    return navigationKey.currentState!.pop(data);
  }
}
