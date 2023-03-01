import 'package:clothing_e_commerce_ui/Ui/verification_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

import '../Constant file/select_brand_screen_constant.dart';
import '../String File/text_string.dart';
import '../animation/fade_animation.dart';

class LiveButtonBottomSheet extends StatefulWidget {
  const LiveButtonBottomSheet({Key? key}) : super(key: key);

  @override
  State<LiveButtonBottomSheet> createState() => _LiveButtonBottomSheetState();
}

class _LiveButtonBottomSheetState extends State<LiveButtonBottomSheet> {
  int timeIndexSelected = 0;

  ///_______________ swipe btn
  bool isFinished = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 625,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25.r),
          topRight: Radius.circular(25.r),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// ====================
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Container(
                  height: 3.h,
                  width: 70.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.sp),
                      color: Colors.black),
                ),
              ),
            ),

            FadeAnimation(
              delay: 1,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  size,
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 30),
                ),
              ),
            ),
            SizedBox(height: 10.h),

            ///_____________________ size selected ____________________
            FadeAnimation(
              delay: 1.5,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Wrap(
                  children: Size_list.map(
                    (hobby) {
                      bool isSelected = false;
                      if (Size_Tital!.contains(hobby)) {
                        isSelected = true;
                      }
                      return GestureDetector(
                        onTap: () {
                          if (!Size_Tital!.contains(hobby)) {
                            if (Size_Tital!.length < 1) {
                              Size_Tital!.add(hobby);
                              setState(() {});
                              print(Size_Tital);
                            }
                          } else {
                            Size_Tital!
                                .removeWhere((element) => element == hobby);
                            setState(() {});
                            print(Size_Tital);
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              height: 40.h,
                              width: 65.w,
                              decoration: BoxDecoration(
                                  color: isSelected
                                      ? Color(0xFFfec2f2)
                                      : Colors.grey.shade100,
                                  borderRadius: BorderRadius.circular(12.r),
                                  border: Border.all(color: Colors.grey)),
                              padding: EdgeInsets.all(16),
                              child: Center(
                                child: Text(
                                  hobby,
                                  style: TextStyle(color: Colors.black),
                                ),
                              )),
                        ),
                      );
                    },
                  ).toList(),
                ),
              ),
            ),

            ///______________________ Payment Schedule _____________

            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: FadeAnimation(
                delay: 2,
                child: const Text(
                  Payment_Schedule,
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 30),
                ),
              ),
            ),

            SizedBox(height: 10.h),
            FadeAnimation(
              delay: 2.5,
              child: SizedBox(
                height: 75.h,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  itemCount: Listtilelist.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          timeIndexSelected = index;
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.w),
                        child: Container(
                          height: 75.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.r),
                              border: Border.all(
                                color: index == timeIndexSelected
                                    ? Colors.grey
                                    : Colors.grey,
                              ),
                              color: timeIndexSelected == index
                                  ? Color(0xFFfec2f2)
                                  : Colors.white),
                          child: Center(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(Listtilelist[index].tital,
                                  style: TextStyle(
                                      color: index == timeIndexSelected
                                          ? Colors.black
                                          : Colors.grey,
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w700)),
                              SizedBox(height: 10.h),
                              Text(Listtilelist[index].description,
                                  style: TextStyle(
                                      color: index == timeIndexSelected
                                          ? Colors.black
                                          : Colors.black54,
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w700)),
                            ],
                          )),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 15.h),
            FadeAnimation(
              delay: 3,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: 100.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: Color(0XFFeceef0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: const [
                          Text(
                            Available_to_loan,
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600),
                          ),
                          Spacer(),
                          Text(
                            "\$760.00",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.grey.shade900,
                      ),
                      Row(
                        children: const [
                          Text(
                            total_spend_now,
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600),
                          ),
                          Spacer(),
                          Text(
                            "\$139.50",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            ///__________________ swipe button ________________
            FadeAnimation(
              delay: 3.5,
              child: Padding(
                padding: const EdgeInsets.only(
                    right: 20, left: 20, bottom: 20, top: 15),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(50.r)),
                    child: SwipeableButtonView(
                        buttontextstyle: TextStyle(
                            fontSize: 18.sp, color: Colors.grey.shade700),
                        buttonText: Swipe_to_checkout,
                        buttonWidget: Icon(
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
                                  builder: (context) => verification_screen()));
                          setState(() {
                            isFinished = false;
                          });
                        }),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
