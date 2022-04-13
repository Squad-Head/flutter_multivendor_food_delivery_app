import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multivendor_food_delivery_customer/presentation/constants.dart';
import 'package:multivendor_food_delivery_customer/presentation/welcome_grid_demoModel.dart';

import 'presentation/screens/delivery_welcome_screen.dart';
import 'presentation/widget/welcom_grid_container_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      builder: () => const MaterialApp(
        debugShowCheckedModeBanner: false,
        // Use this line to prevent extra rebuilds
        useInheritedMediaQuery: true,
        title: 'Multi Vendor Delivery App',
        home: Scaffold(
          body: SafeArea(
            child: DeliveryWelcomeScreen(),
          ),
        ),
      ),
      designSize: const Size(1080, 1920),
    );
  }
}
