import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../String File/text_string.dart';
import '../animation/fade_animation.dart';
import 'HomePage.dart';

class Success_screen extends StatefulWidget {
  const Success_screen({Key? key}) : super(key: key);

  @override
  State<Success_screen> createState() => _Success_screenState();
}

class _Success_screenState extends State<Success_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 45),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 100.h),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                        height: 45.h,
                        width: 45.h,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.transparent,
                            border: Border.all(color: Colors.black)),
                        child: const Center(
                            child: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ))),
                  ),
                  Spacer(),
                  Container(
                      height: 45.h,
                      width: 45.h,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                          border: Border.all(color: Colors.black)),
                      child: const Center(
                          child: Icon(
                        Icons.more_horiz,
                        color: Colors.black,
                      ))),
                ],
              ),
              SizedBox(height: 20.h),
              FadeAnimation(
                delay: 1,
                child: Container(
                    height: 100.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200, shape: BoxShape.circle),
                    child: Icon(Icons.done, size: 60.sp)),
              ),
              SizedBox(height: 15.h),
              FadeAnimation(
                delay: 1.5,
                child: SizedBox(
                  width: 248.w,
                  child: Text("Payment Successful",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24.sp,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w700)),
                ),
              ),
              SizedBox(height: 15.h),
              FadeAnimation(
                delay: 2,
                child: Container(
                  height: 40.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      color: Color(0xFFfec2f2),
                      borderRadius: BorderRadius.circular(12.r)),
                  child: Center(
                    child: Text("On Process",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.sp,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500)),
                  ),
                ),
              ),
              SizedBox(height: 160.h),

              ///_____________ ElevatedButton ___________________
              FadeAnimation(
                delay: 2.5,
                child: SizedBox(
                  height: 55.h,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF2a2a2a),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                    child: Text(Back_to_horne,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 18.sp,
                            color: Colors.white,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            wordSpacing: 2)),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              FadeAnimation(
                delay: 3,
                child: SizedBox(
                  height: 55.h,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                    child: Text(Transaction_detail,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 18.sp,
                            color: Colors.black,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            wordSpacing: 2)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
