import 'package:clothing_e_commerce_ui/Constant%20file/sub_image_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../String File/image_string.dart';
import '../String File/text_string.dart';
import '../Ui/dashboard_page.dart';

class JustForYouContainer extends StatelessWidget {
  const JustForYouContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      height: 260.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            image_location: shirt_1,
            name: doller24_80,
            description: week6_20_week,
            listcloth: [
              clothModel(assetsImage: shirt_1),
              clothModel(assetsImage: shirt_1_1),
              clothModel(assetsImage: shirt_1_2),
            ],
          ),
          Category(
            image_location: shirt_2,
            name: doller22_80,
            description: week4_10_week,
            listcloth: [
              clothModel(assetsImage: shirt_2),
              clothModel(assetsImage: shirt_2_1),
              clothModel(assetsImage: shirt_2_2),
            ],
          ),
          Category(
            image_location: shirt_3_0,
            name: doller24_80,
            description: week6_20_week,
            listcloth: [
              clothModel(assetsImage: shirt_3_0),
              clothModel(assetsImage: shirt_3_1),
              clothModel(assetsImage: shirt_3_2),
            ],
          ),
          Category(
            image_location: shirt_4_0,
            name: doller22_80,
            description: week4_10_week,
            listcloth: [
              clothModel(assetsImage: shirt_4_0),
              clothModel(assetsImage: shirt_4_1),
              clothModel(assetsImage: shirt_4_2),
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
    required this.listcloth,
    this.name,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('Hello navigator ${image_location}');

        print('Hello navigator ${name}');

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
        child: Container(
          height: 250.h,
          width: 175.w,
          decoration: BoxDecoration(
            color: Colors.pink.shade100,
            borderRadius: BorderRadius.circular(12.r),
            image: DecorationImage(
                image: AssetImage(image_location!), fit: BoxFit.cover),
          ),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                gradient:
                    LinearGradient(begin: Alignment.bottomCenter, colors: [
                  // Colors.black.withOpacity(0.9),
                  Colors.black.withOpacity(0.6),
                  Colors.black.withOpacity(0.2),
                ])),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    name!,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Poppins",
                        fontSize: 22.sp),
                  ),
                  SizedBox(height: 5.h),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    decoration: BoxDecoration(
                        color: Color(0xFFfec2f2),
                        borderRadius: BorderRadius.circular(50.r)),
                    child: Text(
                      description!,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Poppins",
                          fontSize: 15.sp),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
