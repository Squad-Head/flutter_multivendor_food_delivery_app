import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:multivendor_food_delivery_admin/application/auth/auth_provider.dart';
import 'package:multivendor_food_delivery_admin/application/auth/auth_state.dart';
import 'package:multivendor_food_delivery_admin/domain/auth/user_data.dart';
import 'package:multivendor_food_delivery_admin/presentation/auth/sign_in/sign_in_screen.dart';
import 'package:multivendor_food_delivery_admin/presentation/dashboard/dashboard_screen.dart';

class SplashScreen extends HookConsumerWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    useEffect(() {
      Future.delayed(const Duration(milliseconds: 100), () {
        ref.read(authProvider.notifier).checkAuth();
      });

      return null;
    }, []);

    ref.listen<AuthState>(authProvider, (previous, next) {
      if (previous?.loading != next.loading && !next.loading) {
        if (next.user != UserData.none()) {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (ctx) => const DashboardScreen()));
        } else {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (ctx) => const SignInScreen()));
        }
      }
    });

    return const Scaffold(
      body: Center(
        child: Text("This is our splash screen"),
      ),
    );
  }
}
