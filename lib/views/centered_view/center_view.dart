import 'package:flutter/material.dart';
import 'package:random_task/constants/constants.dart';

class BillingForm extends StatelessWidget {
  BillingForm({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormFieldState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          Form(
            key: _formKey,
            child: Column(
              children: [
                Row(
                  children: const [
                    Icon(
                      Icons.arrow_back_ios,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Enter card billing address")
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.check_box_outlined,
                      color: Colors.purpleAccent.withOpacity(.4),
                    )
                  ],
                ),
                Text(
                  "Address",
                  style: formTitleStyle,
                ),
                const SizedBox(
                  height: 10,
                ),
                 TextFormField(
                   decoration: const InputDecoration(
                     hintText: "P.O Box 2032 Nairobi"
                   ),
                ),
                ElevatedButton(onPressed: () {}, child: Text("let's go"))
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          Form(
            child: Column(
              children: [
                Row(
                  children: const [
                    Icon(
                      Icons.arrow_back_ios,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Enter card billing address")
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.check_box_outlined,
                      color: Colors.purpleAccent.withOpacity(.4),
                    )
                  ],
                ),
                Text(
                  "fullname",
                  style: formTitleStyle,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration:
                      const InputDecoration(hintText: "P.O Box 2032 Nairobi"),
                )
              ],
            ),
          ),
        ],
      ),
    ); 
  }
}