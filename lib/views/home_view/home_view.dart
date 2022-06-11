import 'package:flutter/material.dart';
import 'package:random_task/views/home_desktop/home_view_desktop.dart';
import 'package:random_task/views/home_mobile/home_view_mobile.dart';
import 'package:random_task/widget/navigationBar/drawer/navigation_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../widget/navigationBar/nav_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? const NavigationDrawer()
            : null,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SizedBox(
            child: Column(
              children: [
                const NavigationBarList(),
                const SizedBox(
                  height: 20,
                ),
                ScreenTypeLayout(
                  mobile: HomeViewMobile(),
                  desktop: HomeViewDesktop(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
