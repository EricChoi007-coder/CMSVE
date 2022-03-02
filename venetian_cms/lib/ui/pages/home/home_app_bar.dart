import 'package:flutter/material.dart';

class CMSHomeAppBar extends AppBar {
  CMSHomeAppBar(BuildContext context) : super(
      title: Text("HOST CRM"),
      leading: Builder(
        builder: (ctx) {
          return IconButton(
            icon: Icon(Icons.build),
            onPressed: () {
              Scaffold.of(ctx).openDrawer();
            },
          );
        },
      ));
}
