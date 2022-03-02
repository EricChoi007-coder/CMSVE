import 'package:flutter/material.dart';

import '../../ui/pages/main/main.dart';
import '../../ui/pages/meal_sample/meal.dart';


class CMSRouter {
  static final String initialRoute = CMSMainScreen.routeName;

  static final Map<String, WidgetBuilder> routes = {
    CMSMainScreen.routeName: (ctx) => CMSMainScreen(),
    CMSMealScreen.routeName: (ctx) => CMSMealScreen(),

  };

  // 自己扩展
  static final RouteFactory generateRoute = (settings) {
    return null;
  };

  static final RouteFactory unknownRoute = (settings) {
    return null;
  };
}