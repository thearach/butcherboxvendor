import 'package:flutter/material.dart';

enum TabItem { Home, Account }

class TabItemData {
  const TabItemData({@required this.title, @required this.icon});
  final String title;
  final IconData icon;

  static const Map<TabItem, TabItemData> allItems = {
    TabItem.Home: TabItemData(title: 'Home', icon: Icons.home),
    // TabItem.Cart: TabItemData(title: 'Cart', icon: Icons.shopping_cart),
    TabItem.Account: TabItemData(title: 'Account', icon: Icons.person),
  };
}
