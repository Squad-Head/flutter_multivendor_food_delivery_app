import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multivendor_food_delivery_customer/presentation/demo_delivery_tracking_model.dart';

import 'presentation/widget/delivery_tracking_widget.dart';

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
            child: GridView.builder(
              padding: const EdgeInsets.all(10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
              ),
              itemCount: deliveryModelList.length,
              itemBuilder: (BuildContext context, int index) {
                return DeliveryTrackingWidget(
                    deliveryTrackingModel: deliveryModelList[index]);
              },
            ),
          ),
        ),
      ),
      designSize: const Size(1080, 1920),
    );
  }
}
