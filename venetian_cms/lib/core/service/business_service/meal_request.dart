

import 'dart:convert';

import 'package:flutter/services.dart';

import '../../model/meal_model.dart';

class CMSMealRequest {
  static Future<List<Meal>> getMealData() async {
    // // send network request
    // final url = "/meal";
    // final result = await HttpRequest.request(url);

    // // get data from local json file in assets/json/meal_model.dart
    // 1. load json
    final jsonString = await rootBundle.loadString("assets/json/meal.json");
    //2. json string to map/list
    final result = json.decode(jsonString);
    // 2.json转modal
   //final mealArray = result["meal"];
    final mealArray = CMSMealModel.fromJson(result);
    List<Meal> meals = [];
    for (var str in mealArray.meal) {
      meals.add(str);
    }

    return meals;
  }
}