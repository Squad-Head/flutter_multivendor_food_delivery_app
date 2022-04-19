import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:multivendor_food_delivery_admin/application/auth/auth_provider.dart';
import 'package:multivendor_food_delivery_admin/application/auth/auth_state.dart';
import 'package:multivendor_food_delivery_admin/domain/auth/user_data.dart';
import 'package:multivendor_food_delivery_admin/domain/core/failure.dart';
import 'package:multivendor_food_delivery_admin/presentation/constant.dart';
import 'package:multivendor_food_delivery_admin/presentation/auth/components/sing_in_form.dart';
import 'package:multivendor_food_delivery_admin/presentation/dashboard/dashboard_screen.dart';

class SignInScreen extends ConsumerWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    Size size = MediaQuery.of(context).size;

    final state = ref.watch(authProvider);

    ref.listen<AuthState>(authProvider, (previous, next) {
      if (previous?.loading != next.loading && !next.loading) {
        if (next.user != UserData.none()) {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (ctx) => const DashboardScreen()));
        }

        if (next.failure != Failure.none()) {
          Logger().i("time to show error");

          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    title: Text(next.failure.type),
                    content: Text(next.failure.error),
                  ));
        }
      }
    });
    return Scaffold(
      backgroundColor: secondaryColor,
      appBar: AppBar(
        //   backgroundColor: AppColor.secondaryColor,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            if (state.loading)
              const LinearProgressIndicator(
                color: Colors.green,
              ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                "Sign In",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: size.height * .07),
            Expanded(
              child: Container(
                height: size.height * .8,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.r),
                    topRight: Radius.circular(20.r),
                  ),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Welcome Back",
                        style: TextStyle(
                          // color: AppColor.secondaryColor,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "Glad to see you back my buddy",
                        style: TextStyle(fontSize: 14, color: Colors.grey[400]),
                      ),
                      SizedBox(height: 40.h),
                      const SignInForm(),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
