import 'package:bot_toast/bot_toast.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:multivendor_food_delivery_customer/firebase_options.dart';
import 'package:multivendor_food_delivery_customer/presentation/Payment/checkout_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, ref) {
    return ScreenUtilInit(
        designSize: const Size(392.7, 781.1),
        minTextAdapt: true,
        builder: () {
          return MaterialApp(
            builder: BotToastInit(),
            debugShowCheckedModeBanner: false,
            title: 'Service App',
            themeMode: ThemeMode.light,
            theme: FlexThemeData.light(
                blendLevel: 5,
                surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
                useSubThemes: true,
                scheme: FlexScheme.deepBlue),
            darkTheme: FlexThemeData.dark(
                blendLevel: 5,
                surfaceMode: FlexSurfaceMode.highScaffoldLevelSurface,
                useSubThemes: true,
                scheme: FlexScheme.deepBlue),
            home: const CheckOutScreen(),
          );
        });
  }
}
