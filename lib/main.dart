import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'Ui/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, _) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Clothing e-commerce_ui',
        theme: ThemeData(
          primarySwatch: Colors.orange,
          textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
        ),
        home: SplashScreen(),
      ),
    );
  }
}
