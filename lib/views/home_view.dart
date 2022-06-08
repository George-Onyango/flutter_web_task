import 'package:flutter/material.dart';
import 'package:random_task/widget/nav_bar/nav_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        child: Column(
          children: const [NavigationBarList()],
        ),
      ),
    );
  }
}
