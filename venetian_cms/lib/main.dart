import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:venetian_cms/core/router/route.dart';
import 'package:venetian_cms/ui/shared/app_theme.dart';
import 'package:venetian_cms/ui/shared/size_fit.dart';

import 'core/viewmodel/meal_view_model.dart';

void main() {
  // Provider -> ViewModel/Provider/Consumer(Selector)
  runApp(
      ChangeNotifierProvider(
        create: (ctx) => CMSMealViewModel(),  //lazy loading
        child: MyApp(),
      )
  );
}

// void main() => runApp(
//     MyApp());
class MyApp extends StatelessWidget {
@override
    Widget build(BuildContext context){
  //CMSSizeFit Initial
  CMSSizeFit.initialize();
  return MaterialApp(
    title: 'HOST CRM',
    //Theme Related
    theme: CMSAppTheme.norTheme,
    //Route Related
    initialRoute: CMSRouter.initialRoute,
    routes: CMSRouter.routes,
    onGenerateRoute: CMSRouter.generateRoute,
    onUnknownRoute: CMSRouter.unknownRoute,
  );
}}