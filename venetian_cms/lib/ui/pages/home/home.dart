import 'package:flutter/material.dart';

import 'home_app_bar.dart';
import 'home_content.dart';
import 'home_drawer.dart';

class CMSHomeScreen extends StatelessWidget {
  const CMSHomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CMSHomeAppBar(context),
      body: CMSHomeContent(),
      drawer: CMSHomeDrawer(),
    );
  }
}
