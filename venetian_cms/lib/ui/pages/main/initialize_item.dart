import 'package:flutter/material.dart';
import 'package:venetian_cms/ui/pages/home/home.dart';
import 'package:venetian_cms/ui/pages/my_offer/myoffer.dart';

import 'main.dart';


final List<Widget> pages = [
  CMSHomeScreen(),
  CMSMyOfferScreen(),

];

final List<BottomNavigationBarItem> items = [
  BottomNavigationBarItem(
      label : "Main",
      icon: Icon(Icons.home)
  ),
  BottomNavigationBarItem(
      label: "Function",
      icon: Icon(Icons.star)
  ),

];