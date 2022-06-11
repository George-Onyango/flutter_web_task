import 'package:flutter/material.dart';
import 'package:random_task/widget/navigationBar/drawer/drawer_header.dart';
import 'package:random_task/widget/navigationBar/drawer/drawer_items.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 13)]),
      child: Column(
        children: const [
          FillerHeader(),
          DrawerItems(title: "Buy Crypto"),
          DrawerItems(title: "Business",),
          DrawerItems(title: "About Us"),
          DrawerItems(title: "Careers"),
          DrawerItems(title: "Blog"),
          DrawerItems(title: "Help Center"),
        ],
      ),
    );
  }
}
