import 'package:flutter/material.dart';

import '../model/meal_model.dart';
import '../service/business_service/meal_request.dart';

class CMSMealViewModel extends ChangeNotifier {
  List<Meal> _meals = [];

  List<Meal> get meals {
    return _meals;
  }

  CMSMealViewModel() {
    CMSMealRequest.getMealData().then((res) {
      _meals = res;
      notifyListeners(); //important to add, function to notify all the data related to rebuild
    });
  }
}