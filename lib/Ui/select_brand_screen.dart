import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Constant file/select_brand_screen_constant.dart';
import '../String File/text_string.dart';
import '../animation/fade_animation.dart';
import 'bottom_navigation_bar.dart';

class SelectBrandScreen extends StatefulWidget {
  const SelectBrandScreen({Key? key}) : super(key: key);

  @override
  State<SelectBrandScreen> createState() => _SelectBrandScreenState();
}

class _SelectBrandScreenState extends State<SelectBrandScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 45, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FadeAnimation(
                    delay: 1,
                    child: Text(brand,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 33.sp,
                            color: Colors.black,
                            fontFamily: "Poppins",
                            wordSpacing: 2)),
                  ),
                  SizedBox(height: 20),

                  ///____________ select brand _________________________
                  FadeAnimation(
                    delay: 1.5,
                    child: Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: brands_logo.map(
                        (hobby) {
                          bool isSelected = false;
                          if (brandTital!.contains(hobby)) {
                            isSelected = true;
                          }
                          return GestureDetector(
                            onTap: () {
                              if (!brandTital!.contains(hobby)) {
                                if (brandTital!.length < 5) {
                                  brandTital!.add(hobby);
                                  setState(() {});
                                  print(brandTital);
                                }
                              } else {
                                brandTital!
                                    .removeWhere((element) => element == hobby);
                                setState(() {});
                                print(brandTital);
                              }
                            },
                            child: Container(
                              child: Container(
                                height: 80.h,
                                width: 80.w,
                                decoration: BoxDecoration(
                                  color: isSelected
                                      ? Color(0xFFfec2f2)
                                      : Colors.grey.shade100,
                                  shape: BoxShape.circle,
                                ),
                                padding: EdgeInsets.all(15),
                                child: Container(
                                  width: 45.w,
                                  height: 45.h,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage(hobby),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ).toList(),
                    ),
                  ),
                  SizedBox(height: 50.h),
                ],
              ),
            ),
          ),
          FadeAnimation(
            delay: 2,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: 55.h,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BottomNavigation()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF2a2a2a),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                    child: Text(Start_shopping,
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
            ),
          ),
        ],
      ),
    );
  }
}
