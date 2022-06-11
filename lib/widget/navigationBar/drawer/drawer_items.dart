import 'package:flutter/material.dart';
import 'package:random_task/widget/navigationBar/navbar_items.dart';

class DrawerItems extends StatelessWidget {
  const DrawerItems({Key? key, required this.title}) : super(key: key);

  final String title;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 60.0),
      child: Row(
        children: [
          NavBarItem(title: title,),
        ],
      ),
    );
  }
}
