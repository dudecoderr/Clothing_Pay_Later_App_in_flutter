import 'package:clothing_e_commerce_ui/Constant%20file/sub_image_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../String File/image_string.dart';
import '../String File/text_string.dart';
import '../Ui/dashboard_page.dart';

class Popular_product_Container extends StatelessWidget {
  const Popular_product_Container({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red.shade100,
      height: 250.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            image_location: shoes_5_0,
            name: doller22_80,
            description: week4_10_week,
            listcloth: [
              clothModel(assetsImage: shoes_5_0),
              clothModel(assetsImage: shoes_5_1),
              clothModel(assetsImage: shoes_5_2),
            ],
          ),
          Category(
            image_location: shoes_1_0,
            name: doller22_80,
            description: week4_10_week,
            listcloth: [
              clothModel(assetsImage: shoes_1_0),
              clothModel(assetsImage: shoes_1_1),
              clothModel(assetsImage: shoes_1_2),
            ],
          ),
          Category(
            image_location: shoes_2_0,
            name: doller35_90,
            description: week9_20_week,
            listcloth: [
              clothModel(assetsImage: shoes_2_0),
              clothModel(assetsImage: shoes_2_1),
              clothModel(assetsImage: shoes_2_2),
            ],
          ),
          Category(
            image_location: shoes_3_0,
            name: doller15_00,
            description: week5_30_week,
            listcloth: [
              clothModel(assetsImage: shoes_3_0),
              clothModel(assetsImage: shoes_3_1),
              clothModel(assetsImage: shoes_3_2),
            ],
          ),
          Category(
            image_location: shoes_4_0,
            name: doller22_80,
            description: week4_10_week,
            listcloth: [
              clothModel(assetsImage: shoes_4_0),
              clothModel(assetsImage: shoes_4_1),
              clothModel(assetsImage: shoes_4_2),
            ],
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String? image_location;
  final String? name;
  final String? description;
  List<clothModel> listcloth;

  Category({
    this.image_location,
    this.name,
    this.description,
    required this.listcloth,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DashBoardscreen(
                      image_location: image_location,
                      name: name,
                      description: description,
                      listcloth: listcloth,
                    )));
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Column(
          children: [
            Container(
              height: 180.h,
              width: 190.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Image.asset(
                image_location!,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    name!,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Poppins",
                        fontSize: 22.sp),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    description!,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Poppins",
                        fontSize: 15.sp),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
