import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

import '../Constant file/sub_image_list.dart';
import '../String File/text_string.dart';
import 'bottom_sheet_screen.dart';

class DashBoardscreen extends StatefulWidget {
  final String? image_location;
  final String? name;
  final String? description;
  final List<clothModel> listcloth;

  const DashBoardscreen(
      {Key? key,
      this.image_location,
      this.name,
      this.description,
      required this.listcloth})
      : super(key: key);

  @override
  State<DashBoardscreen> createState() => _DashBoardscreenState();
}

class _DashBoardscreenState extends State<DashBoardscreen> {
  ///__________________ select container
  RxString shoes_1 = 'assets/shirt_1.0.png'.obs;
  RxInt _selectedIndex = 0.obs;

  ///_______________ swipe btn
  bool isFinished = false;
  @override
  void initState() {
    shoes_1.value = widget.image_location!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Obx(() {
            shoes_1.value;
            return Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    shoes_1.value,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0.5),
                          Colors.black.withOpacity(0.1),
                        ])),
              ),
            );
          }),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 45),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
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
                          border: Border.all(color: Colors.white)),
                      child: const Center(
                          child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ))),
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "VANS X ROKIT\nWALTONIAN VEST",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Poppins"),
                    ),
                    Text(
                      widget.name!,
                      style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 8),
                      decoration: BoxDecoration(
                          color: Color(0xFFfec2f2),
                          borderRadius: BorderRadius.circular(50.r)),
                      child: Text(
                        widget.description!,
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Poppins",
                            fontSize: 15.sp),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Container(
                    height: 45.h,
                    width: 45.h,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent,
                        border: Border.all(color: Colors.white)),
                    child: const Center(
                        child: Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    ))),
              ],
            ),
          ),

          ///__________________________ select product ___________________________

          Positioned(
            left: 30,
            bottom: 110,
            child: Container(
              // color: Colors.yellow,
              child: Row(
                children: [
                  SizedBox(
                    child: Row(
                      children: widget.listcloth
                          .asMap()
                          .entries
                          .map((e) => Obx(() {
                                return Container(
                                  height: 80.h,
                                  width: 85.w,
                                  margin: EdgeInsets.only(
                                      left: (e.key == 0) ? 0 : 15),
                                  padding: EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.r),
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      _selectedIndex.value = e.key;
                                      shoes_1.value = e.value.assetsImage;
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color:
                                                (_selectedIndex.value == e.key)
                                                    ? Colors.white
                                                    : Colors.black,
                                            width: 2),
                                        borderRadius:
                                            BorderRadius.circular(12.r),
                                      ),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(12.r),
                                        child: Image.asset(
                                          e.value.assetsImage,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }))
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),

          ///__________________ swipe button ________________
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(50.r)),
                child: SwipeableButtonView(
                    buttontextstyle:
                        TextStyle(fontSize: 18.sp, color: Colors.grey.shade700),
                    buttonText: Swipe_to_order,
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
                      await showModalBottomSheet<void>(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (BuildContext context) {
                          return const LiveButtonBottomSheet();
                        },
                      );

                      setState(() {
                        isFinished = false;
                      });
                    }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
