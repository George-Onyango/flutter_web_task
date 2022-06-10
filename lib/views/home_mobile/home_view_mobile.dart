import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class HomeViewMobile extends StatelessWidget {
  HomeViewMobile({Key? key}) : super(key: key);

  final pageViewController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100),
        child: Container(
          width: 500,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                    color: kPrimary.withOpacity(.2),
                    offset: const Offset(5.00, 5.00),
                    blurRadius: 10.0,
                    spreadRadius: 4.0),
                const BoxShadow(
                  color: Colors.white,
                  offset: Offset(0.0, 0.0),
                  blurRadius: 0.0,
                  spreadRadius: 0.0,
                ),
              ]),
          height: 700,
          child: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: pageViewController,
            children:  [
              Container(
                // width:200,
                height: 1000,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 30),
                  child: Column(
                    children: [
                      Form(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.arrow_back_ios,
                                    size: 15,
                                  ),
                                ),
                                const SizedBox(
                                  width: 1,
                                ),
                                Text(
                                  "Enter basic details",
                                  style: formHeadingStyle,
                                ),
                                const Spacer(),
                                const Icon(Icons.menu)
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Please enter your name and date of birth as they appear on your official documents",
                              style: regulaStyle,
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            SizedBox(
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "First Name",
                                      style: formTitleStyle,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                        filled: true,
                                        fillColor:
                                            Colors.grey.withOpacity(.3),
                                        enabledBorder:
                                            OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color:
                                                  Colors.transparent),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide:
                                                const BorderSide(
                                                    color: Colors
                                                        .transparent),
                                            borderRadius:
                                                BorderRadius.circular(
                                                    20)),
                                        hintText: "First Name"),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "Last Name",
                                      style: formTitleStyle,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.grey.withOpacity(.3),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.transparent),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Colors.transparent),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        hintText: "Last Name"),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "DOB",
                                style: formTitleStyle,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.grey.withOpacity(.3),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.transparent),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.transparent),
                                      borderRadius:
                                          BorderRadius.circular(20)),
                                  hintText: "dd/mm/yyyy"),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Nationality",
                                style: formTitleStyle,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                suffixIcon:
                                    const Icon(Icons.arrow_drop_down),
                                filled: true,
                                fillColor: Colors.grey.withOpacity(.3),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.transparent),
                                    borderRadius:
                                        BorderRadius.circular(20)),
                                hintText: "Kenyan",
                              ),
                            ),
                            const SizedBox(
                              height: 95,
                            ),
                            MaterialButton(
                              height: 70,
                              shape: const StadiumBorder(),
                              color: kPrimary,
                              onPressed: () => pageViewController.nextPage(
                                  duration:
                                      const Duration(milliseconds: 300),
                                  curve: Curves.easeIn),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 150.0),
                                child: Row(
                                  children: const [
                                    Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Continue",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.arrow_forward,
                                      size: 25,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                child: SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 30),
                    child: Column(
                      children: [
                        Form(
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () =>
                                          pageViewController.previousPage(
                                              duration: const Duration(
                                                  milliseconds: 300),
                                              curve: Curves.easeInCirc),
                                      icon: const Icon(
                                        Icons.arrow_back_ios,
                                        size: 15,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 1,
                                    ),
                                    Text(
                                      "Enter card billing address",
                                      style: formHeadingStyle,
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () =>
                                        pageViewController.previousPage(
                                            duration:
                                                const Duration(seconds: 1),
                                            curve: Curves.bounceIn),
                                    icon: Icon(
                                      Icons.check_box_outlined,
                                      color:
                                          Colors.purpleAccent.withOpacity(.4),
                                      size: 15,
                                    ),
                                  ),
                                  // const SizedBox(width:0.02,),
                                  const Text(
                                    "Use the address I have on file",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Address",
                                  style: formTitleStyle,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.grey.withOpacity(.3),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: const BorderSide(
                                          color: Colors.transparent),
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.transparent),
                                    ),
                                    hintText: "P.O Box 2032 Nairobi"),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Address 2 (optional)",
                                  style: formTitleStyle,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.grey.withOpacity(.3),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: const BorderSide(
                                          color: Colors.transparent),
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.transparent),
                                    ),
                                    hintText: "P.O Box 2032 Nairobi"),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              SizedBox(
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "City",
                                        style: formTitleStyle,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    TextField(
                                      decoration: InputDecoration(
                                          filled: true,
                                          fillColor:
                                              Colors.grey.withOpacity(.3),
                                          enabledBorder:
                                              OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color:
                                                    Colors.transparent),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide:
                                                  const BorderSide(
                                                      color: Colors
                                                          .transparent),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      20)),
                                          hintText: "Nairobi"),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                  ],
                                ),
                              ),const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "Postal code",
                                        style: formTitleStyle,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    TextFormField(
                                      decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.grey.withOpacity(.3),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Colors.transparent),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: Colors.transparent),
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          hintText: "00200"),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Country",
                                  style: formTitleStyle,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.grey.withOpacity(.3),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: const BorderSide(
                                          color: Colors.transparent),
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.transparent),
                                    ),
                                    hintText: "Kenya"),
                              ),
                              const SizedBox(
                                height: 70,
                              ),
                              MaterialButton(
                                height: 70,
                                onPressed: () {},
                                color: kPrimary,
                                shape: const StadiumBorder(),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 150.0),
                                  child: Row(
                                    children: const [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Continue",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.arrow_forward,
                                        size: 25,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(),
            
            SizedBox(
              child: Column(
                children: [
                  Text("Name",
                  style: formTitleStyle,),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    decoration:const InputDecoration(
                      filled: true,
                      fillColor: Colors.grey,
                      enabledBorder:OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)
                      )
                    ),
                  )
                ],
              ),
            )
            ],
          ),
        ),
      
      
      ),
    );
  }
}
