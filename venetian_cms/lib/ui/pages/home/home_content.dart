import 'package:flutter/material.dart';
import 'package:venetian_cms/core/model/category_model.dart';
import 'package:venetian_cms/core/service/json_parse.dart';
import 'package:venetian_cms/core/extensions/double_extension.dart';

import 'home_category_item.dart';
class CMSHomeContent extends StatefulWidget {
  const CMSHomeContent({Key key}) : super(key: key);

  @override
  _CMSHomeContentState createState() => _CMSHomeContentState();
}

class _CMSHomeContentState extends State<CMSHomeContent> {
   List<CMSCategoryModel> _categories= [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //loading json data
    JsonParse.getCategoryData().then((value) {
      setState(() {
        _categories = value;
      });
    }

    );
  }
  @override
  Widget build(BuildContext context) {
    return GridView.builder(               //can use FutureBuilder to Rebuild this part for better performance
        padding: EdgeInsets.all(15.2.px),
      itemCount: _categories.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15.2.px,
            mainAxisSpacing: 15.2.px,
            childAspectRatio: 1.3
        ),
        itemBuilder: (ctx, index) {
          return CMSHomeCategoryItem(_categories[index]);
        });
  }
}
