
import 'package:flutter/material.dart';
import 'package:venetian_cms/core/extensions/double_extension.dart';

import '../../../core/model/category_model.dart';
import '../meal_sample/meal.dart';


class CMSHomeCategoryItem extends StatelessWidget {
  final CMSCategoryModel _category;
  CMSHomeCategoryItem(this._category);

  @override
  Widget build(BuildContext context) {
    final bgColor = _category.cColor;

    return GestureDetector(
      child: Container(
          decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(12.1.px),
              gradient: LinearGradient(
                  colors: [
                    bgColor.withOpacity(.5),
                    bgColor
                  ]
              )
          ),
          alignment: Alignment.center,
          child: Text(
            _category.title,
          )
      ),
      onTap: () {
        Navigator.of(context).pushNamed(CMSMealScreen.routeName, arguments: _category);
      },
    );
  }
}