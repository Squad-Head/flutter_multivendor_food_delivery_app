import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multivendor_food_delivery_customer/presentation/constants.dart';
import 'package:multivendor_food_delivery_customer/presentation/welcome_grid_demoModel.dart';

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
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        // Use this line to prevent extra rebuilds
        useInheritedMediaQuery: true,
        title: 'Multi Vendor Delivery App',
        home: Scaffold(
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Admin!',
                  style: GoogleFonts.lato(
                      fontSize: 25, fontWeight: FontWeight.w500),
                ),
                // TODO: add name dynamically
                SizedBox(height: 20.h),

                Expanded(
                  child: GridView.builder(
                    padding: EdgeInsets.all(20.w),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1.2,
                      crossAxisSpacing: 20.w,
                      mainAxisSpacing: 20.h,
                      crossAxisCount: 2,
                    ),
                    itemCount: deliveryModelList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return DeliveryTrackingWidget(
                          deliveryTrackingModel: deliveryModelList[index]);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      designSize: const Size(1080, 1920),
    );
  }
}
