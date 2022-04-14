import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:merchant_multivendor_food_delivery_app/Presentation/screens/use_current_location_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      builder: (_) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          // Use this line to prevent extra rebuilds
          useInheritedMediaQuery: true,
          title: 'First Method',
          // You can use the library anywhere in the app even in theme

          home: Scaffold(
            body: SafeArea(
              child: UserCurrentLocationScreen(),
            ),
          ),
        );
      },
    );
  }
}
