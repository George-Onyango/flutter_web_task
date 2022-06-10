import 'package:flutter/material.dart';
import 'package:random_task/widget/navigationBar/navigation_desktop/navbar_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'navigation_mobile/navbar_mobile.dart';

class NavigationBarList extends StatelessWidget {
  const NavigationBarList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: const NavigationBarDesktop(),
      mobile: const NavigationBarMobile(),
    );
  }
}
