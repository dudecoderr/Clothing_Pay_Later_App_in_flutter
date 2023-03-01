import 'package:clothing_e_commerce_ui/Ui/success_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

import '../String File/text_string.dart';
import '../animation/fade_animation.dart';

class verification_screen extends StatefulWidget {
  const verification_screen({Key? key}) : super(key: key);

  @override
  State<verification_screen> createState() => _verification_screenState();
}

class _verification_screenState extends State<verification_screen> {
  ///_______________ swipe btn
  bool isFinished = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 48, right: 20, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 30, right: 30, top: 90, bottom: 60),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FadeAnimation(
                          delay: 1,
                          child: Text(
                            Enter_your_pin_number,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 24.sp,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        FadeAnimation(
                          delay: 1.5,
                          child: Text(Enter_your_pin_number_sub,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 13.sp,
                              )),
                        ),
                        const SizedBox(height: 70),

                        ///_________________ pin code ___________
                        FadeAnimation(
                          delay: 2,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white54,
                            ),
                            height: 90,
                            width: 340,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: PinCodeTextField(
                                length: 4,
                                obscureText: false,
                                textStyle: TextStyle(color: Colors.black),
                                animationType: AnimationType.fade,
                                pinTheme: PinTheme(
                                  shape: PinCodeFieldShape.box,
                                  inactiveColor: Colors.black12,
                                  borderRadius: BorderRadius.circular(5),
                                  fieldHeight: 60,
                                  fieldWidth: 60,
                                  activeFillColor: Colors.white,
                                ),
                                onChanged: (value) {
                                  debugPrint(value);
                                  setState(() {
                                    var currentText = value;
                                  });
                                },
                                appContext: context,
                              ),
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

          ///___________________  ElevatedButton ____________________
          FadeAnimation(
            delay: 2.5,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(50.r)),
                  child: SwipeableButtonView(
                      buttontextstyle: TextStyle(
                          fontSize: 18.sp, color: Colors.grey.shade700),
                      buttonText: Finish_The_Payment,
                      buttonWidget: const Icon(
                        Icons.local_mall,
                        color: Colors.white,
                      ),
                      activeColor: Colors.white,
                      buttonColor: Colors.black,
                      isFinished: isFinished,
                      onWaitingProcess: () {
                        Future.delayed(Duration(seconds: 0), () {
                          setState(() {
                            isFinished = true;
                          });
                        });
                      },
                      onFinish: () async {
                        await Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Success_screen()));
                        setState(() {
                          isFinished = false;
                        });
                      }),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
