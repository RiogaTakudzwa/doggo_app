import 'package:flutter/cupertino.dart';

import '../../screens/mobile/favourite/mobile_favourite.dart';
import '../../screens/mobile/home/mobile_home.dart';
import '../../screens/tablet/home/tablet_home.dart';

class ScreenIndex{
  final List<Widget> mobileScreenIndex = [
    const MobileHome(),
    const MobileFavourite()
  ];

  final List<Widget> tabletScreenIndex = [
    const TabletHome()
  ];
}