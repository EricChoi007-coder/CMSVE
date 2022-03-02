import 'package:flutter/material.dart';

import 'initialize_item.dart';

class CMSMainScreen extends StatefulWidget {
  const CMSMainScreen({Key key}) : super(key: key);
  static const String routeName = "/";
  @override
  _CMSMainScreenState createState() => _CMSMainScreenState();
}

class _CMSMainScreenState extends State<CMSMainScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: items,
        selectedFontSize: 14,  //Keep the button select front size stable
        unselectedFontSize: 14, //Keep the button select front size stable
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
