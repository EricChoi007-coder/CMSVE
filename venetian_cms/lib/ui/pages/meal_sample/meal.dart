import 'package:flutter/material.dart';

import '../../../core/model/category_model.dart';

class CMSMealScreen extends StatelessWidget {
  const CMSMealScreen({Key key}) : super(key: key);
  static const String routeName = "/meal";



  @override
  Widget build(BuildContext context) {
    // 获取参数
    final category = ModalRoute.of(context).settings.arguments as CMSCategoryModel;
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: Center(
        child: Text(
            category.title+' content'
        ),
      ),
    );
  }
}
