import 'package:firebase_core/firebase_core.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:merchant_multivendor_food_delivery_app/presentation/home_page.dart';

import 'firebase_options.dart';

void main() async {
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        themeMode: ThemeMode.system,
        theme: FlexColorScheme.light(
          scheme: FlexScheme.espresso,
        ).toTheme,
        darkTheme: FlexColorScheme.dark(scheme: FlexScheme.espresso).toTheme,
        home: HomePage(),
      ),
      designSize: Size(360, 690),
    );
  }
}
