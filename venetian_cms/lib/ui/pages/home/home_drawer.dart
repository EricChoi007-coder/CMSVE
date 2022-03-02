import 'package:flutter/material.dart';
import 'package:venetian_cms/core/extensions/double_extension.dart';


class CMSHomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 230.1.px,
        child: Drawer(
          child: Column(
            children: <Widget>[
              buildHeaderView(context),
              buildListTile(context, Icon(Icons.restaurant), "Function1", () {
                Navigator.of(context).pop();
              }),
              buildListTile(context, Icon(Icons.settings), "Function2", () {
                Navigator.of(context).pop();
              }),
            ],
          ),
        )
    );
  }

  Widget buildHeaderView(BuildContext context) {

    //final Color color = HexColor.fromHex('#485E68');
    return Container(
      width: double.infinity,
      height: 120.1.px,
      color: Color.fromRGBO(72, 94, 104, 1),
      margin: EdgeInsets.only(bottom: 20.1.px),
      alignment: Alignment(0, 0.5),
      child: Text("Header Info"),
    );
  }

  Widget buildListTile(BuildContext context, Widget icon, String title, Function handler) {
    return ListTile(
      leading: icon,
      title: Text(title),
      onTap: handler,
    );
  }
}
