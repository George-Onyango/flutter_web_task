import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../nav_bar_logo.dart';
import '../navbar_items.dart';

class NavigationBarDesktop extends StatelessWidget {
  const NavigationBarDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Row(
          children: [
            SizedBox(
              height: 20,
              width: 400,
              child: Row(
                children: [
                  const NavBarLogo(),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Buy Crypto",
                    style: navbarText,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        "Business",
                        style: navbarText,
                      ),
                      // const SizedBox(width: .5,),
                      const Icon(Icons.arrow_drop_down)
                    ],
                  )
                  // DropdownButton(
                  //   icon: const Icon(Icons.arrow_drop_down),
                  //   items: itemsList.map((String itemsList) {
                  //     return DropdownMenuItem(
                  //         value: itemsList, child: Text(itemsList));
                  //   }).toList(),
                  //   onChanged: (String? newValue) {
                  //     // setState(() {
                  //     //   dropdownValue = newValue!;
                  //     // });
                  //   },
                  // ),
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                NavBarItem(title: 'About Us'),
                SizedBox(
                  width: 30,
                ),
                NavBarItem(title: 'Careers'),
                SizedBox(
                  width: 30,
                ),
                NavBarItem(title: 'Blog'),
                SizedBox(
                  width: 30,
                ),
                NavBarItem(title: 'Help Center'),
                SizedBox(
                  width: 30,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}