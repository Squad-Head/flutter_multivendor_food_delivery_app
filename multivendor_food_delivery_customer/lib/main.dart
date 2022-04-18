import 'package:bot_toast/bot_toast.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:multivendor_food_delivery_customer/presentation/Payment/checkoutScreen.dart';
import 'package:multivendor_food_delivery_customer/presentation/authentication/SignIn.dart';
import 'package:multivendor_food_delivery_customer/presentation/home/detailsScreen.dart';
import 'package:multivendor_food_delivery_customer/presentation/home/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends ConsumerWidget {
  MyApp({Key? key}) : super(key: key);
  // final _appRouter = AppRouter();

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
            // routeInformationParser: _appRouter.defaultRouteParser(),
            // routerDelegate: _appRouter.delegate(
            //     navigatorObservers: () => [BotToastNavigatorObserver()]),
            home: SignInScreen(),
          );
        });
  }
}
