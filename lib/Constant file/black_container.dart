import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../String File/text_string.dart';

class Repay_card extends StatefulWidget {
  const Repay_card({Key? key}) : super(key: key);

  @override
  State<Repay_card> createState() => _Repay_cardState();
}

class _Repay_cardState extends State<Repay_card> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        padding: EdgeInsets.all(10),
        height: 150.h,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.r),
            color: Color(0xFF2a2a2a),
            border: Border.all(color: Colors.grey)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Used,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontFamily: "Poppins"),
                    ),
                    Text(
                      doller240,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(50.r)),
                  child: Text(
                    Add_Limit,
                    style: TextStyle(
                        fontSize: 11,
                        color: Colors.white,
                        fontFamily: "Poppins"),
                  ),
                ),
                SizedBox(width: 5.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      Limit_Loan,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontFamily: "Poppins"),
                    ),
                    Text(
                      doller760,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            Divider(
              color: Colors.grey,
            ),
            Spacer(),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      Repay_sub,
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFFfec2f2),
                          fontFamily: "Poppins"),
                    ),
                    Text(
                      doller120,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  height: 32.h,
                  width: 80.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50.r)),
                  child: Center(
                    child: Text(
                      Repay,
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Poppins"),
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
