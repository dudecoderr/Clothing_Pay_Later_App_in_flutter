import 'package:clothing_e_commerce_ui/Ui/select_brand_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../String File/text_string.dart';
import '../animation/fade_animation.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfec2f2),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 45),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FadeAnimation(
                delay: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.shopping_bag_rounded),
                    SizedBox(width: 5.w),
                    Text(Loanly,
                        style: TextStyle(
                            fontSize: 25.sp,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            color: Colors.black))
                  ],
                ),
              ),
              SizedBox(height: 80.h),
              FadeAnimation(
                delay: 1.5,
                child: Text(loanlyTitle,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 33.sp,
                        color: Colors.black,
                        fontFamily: "Poppins",
                        wordSpacing: 2)),
              ),
              SizedBox(height: 20.h),
              FadeAnimation(
                delay: 2,
                child: Text(loanlySub,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400,
                        wordSpacing: 2)),
              ),
              SizedBox(height: 150.h),
              FadeAnimation(
                delay: 2.5,
                child: SizedBox(
                  height: 55.h,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SelectBrandScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF2a2a2a),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                    child: Text(Sign_In,
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
                    onPressed: () {
                      /*     Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              NotificationPage()));*/
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0XFFeab3de),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                    child: Text(Create_an_account,
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
