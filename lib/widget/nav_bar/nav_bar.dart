import 'package:flutter/material.dart';
import 'package:random_task/constants/constants.dart';

class NavigationBarList extends StatefulWidget {
  const NavigationBarList({Key? key}) : super(key: key);

  @override
  State<NavigationBarList> createState() => _NavigationBarListState();
}

class _NavigationBarListState extends State<NavigationBarList> {
  // String dropdownValue = 'Business';

  var itemsList = ['Business','Products', 'Case Studies'];

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
                  SizedBox(
                  child: Image.asset('assets/logo/mockup.png',fit: BoxFit.cover,)),
                  const SizedBox(
                    width: 20,
                  ),
                  Text("Buy Crypto",style: navbarText,),
                  const SizedBox(
                    width: 20,
                  ),
                  Row(
                    children: [
                      Text("Business",style: navbarText,),
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _NavBarItem(title: 'About Us'),
                const SizedBox(
                  width: 30,
                ),
                _NavBarItem(title: 'Careers'),
                const SizedBox(
                  width: 30,
                ),
                _NavBarItem(title: 'Blog'),
                const SizedBox(
                  width: 30,
                ),
                _NavBarItem(title: 'Help Center'),
                const SizedBox(
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

class _NavBarItem extends StatelessWidget {
  final String title;
  _NavBarItem({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: navbarText,
    );
  }
}
