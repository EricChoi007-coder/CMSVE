import 'package:flutter/services.dart';
import 'dart:convert';

import '../model/category_model.dart';
class JsonParse{
  static Future<List<CMSCategoryModel>> getCategoryData() async {
    // 1. load json
    final jsonString = await rootBundle.loadString("assets/json/category.json");
    //2. json string to map/list
    final result = json.decode(jsonString);

    final resultList = result["category"];
    List<CMSCategoryModel> categories = [];
    for (var json in resultList) {
      categories.add(CMSCategoryModel.fromJson(json));
    }

    return categories;
  }
}