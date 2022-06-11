import 'package:flutter/material.dart';

class FillerHeader extends StatelessWidget {
  const FillerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      alignment: Alignment.center,
      color: Colors.grey.withOpacity(.1),
    );
  }
}
