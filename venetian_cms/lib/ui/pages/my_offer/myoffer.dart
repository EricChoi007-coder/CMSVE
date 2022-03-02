import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:venetian_cms/core/model/meal_model.dart';
import 'package:venetian_cms/core/viewmodel/meal_view_model.dart';
class CMSMyOfferScreen extends StatelessWidget {
  const CMSMyOfferScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MY OFFER"),
      ),
      body: Consumer<CMSMealViewModel>(
        builder: (context,mealVM,child){
          return Text(mealVM.meals.length.toString());
        },
          child: Text("MY OFFER CONTENT")
      ),
    );
  }
}
