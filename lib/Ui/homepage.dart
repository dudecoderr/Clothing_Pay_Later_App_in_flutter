import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Constant file/Popular_product_constant_container.dart';
import '../Constant file/black_container.dart';
import '../Constant file/just_for_yoy_container_constant.dart';
import '../String File/text_string.dart';
import '../animation/fade_animation.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: () => showExitPopup(context),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 45),
                child: FadeAnimation(
                  delay: 1,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            Welcome_back,
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontFamily: "Poppins"),
                            softWrap: true,
                          ),
                          Text(
                            Sullivan,
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600),
                            softWrap: true,
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                          height: 45.h,
                          width: 45.h,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border: Border.all(color: Colors.grey)),
                          child: Center(child: Icon(Icons.notification_add))),
                      const SizedBox(width: 10),
                      Container(
                          height: 45.h,
                          width: 45.h,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border: Border.all(color: Colors.grey)),
                          child: Center(child: Icon(Icons.search_rounded))),
                    ],
                  ),
                ),
              ),

              ///______________ Balck Container Start _______________
              FadeAnimation(delay: 1.5, child: Repay_card()),

              ///______________ Balck Container end _______________

              ///_______________ Just For you product container _________________
              FadeAnimation(
                delay: 2,
                child: Padding(
                  padding: const EdgeInsets.only(
                      right: 20, left: 20, top: 35, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        just_For_You,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Poppins",
                            fontSize: 20.sp),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(50.r)),
                        child: Text(
                          View_More,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Poppins",
                              fontSize: 12.sp),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              FadeAnimation(delay: 2.5, child: JustForYouContainer()),

              ///_______________ Popular_product product container _________________
              FadeAnimation(
                delay: 3,
                child: Padding(
                  padding: const EdgeInsets.only(
                      right: 20, left: 20, top: 35, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        Popular_product,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Poppins",
                            fontSize: 20.sp),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(50.r)),
                        child: Text(
                          View_More,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Poppins",
                              fontSize: 12.sp),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              FadeAnimation(
                  delay: 3.5, child: const Popular_product_Container()),
            ],
          ),
        ),
      ),
    );
  }
}

Future<bool> showExitPopup(context) async {
  return await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Container(
            height: 90,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Do you want to exit?",
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          print('yes selected');
                          exit(0);
                        },
                        child: const Text("Yes"),
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xFFfec2f2)),
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                        child: ElevatedButton(
                      onPressed: () {
                        print('no selected');
                        Navigator.of(context).pop();
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                      ),
                      child: const Text("No",
                          style: TextStyle(color: Colors.black)),
                    ))
                  ],
                )
              ],
            ),
          ),
        );
      });
}
