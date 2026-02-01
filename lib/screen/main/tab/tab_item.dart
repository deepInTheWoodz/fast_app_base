import 'package:ttoss/common/common.dart';
import 'package:ttoss/screen/main/tab/favorite/f_favorite.dart';
import 'package:ttoss/screen/main/tab/home/f_home.dart';
import 'package:flutter/material.dart';

enum TabItem {
  home(Icons.home, '홈', HomeFragment()),
  benefit(Icons.star, '홈', HomeFragment()),
  ttosspay(Icons.payment, '홈', HomeFragment()),
  stock(Icons.candlestick_chart, '홈', HomeFragment()),
  all(Icons.menu, '즐겨찾기', FavoriteFragment(isShowBackButton: false));

  final IconData activeIcon;
  final IconData inActiveIcon;
  final String tabName;
  final Widget firstPage;

  const TabItem(this.activeIcon, this.tabName, this.firstPage, {IconData? inActiveIcon})
      : inActiveIcon = inActiveIcon ?? activeIcon;

  BottomNavigationBarItem toNavigationBarItem(BuildContext context, {required bool isActivated}) {
    return BottomNavigationBarItem(
        icon: Icon(
          key: ValueKey(tabName),
          isActivated ? activeIcon : inActiveIcon,
          color:
              isActivated ? context.appColors.iconButton : context.appColors.iconButtonInactivate,
        ),
        label: tabName);
  }
}
