import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:multivendor_food_delivery_admin/application/auth/auth_provider.dart';
import 'package:multivendor_food_delivery_admin/application/auth/auth_state.dart';
import 'package:multivendor_food_delivery_admin/domain/auth/login_data.dart';
import 'package:multivendor_food_delivery_admin/domain/auth/user_data.dart';
import 'package:multivendor_food_delivery_admin/domain/core/failure.dart';
import 'package:multivendor_food_delivery_admin/presentation/auth/sign_up/sign_up_screen.dart';
import 'package:multivendor_food_delivery_admin/presentation/dashboard/dashboard_screen.dart';

import 'leading_form_icon.dart';
import 'sing_in_screen_lower.dart';

class SignInForm extends HookConsumerWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final emailController = useTextEditingController();
    final passController = useTextEditingController();

    return Form(
      child: Expanded(
        child: ListView(
          children: [
            TextFormField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                icon: LeadingFormIcon(icon: Icons.mail),
                labelText: "Email",
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: passController,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: const InputDecoration(
                icon: LeadingFormIcon(icon: Icons.lock),
                labelText: "Passowrd",
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
                onPressed: () {
                  final LoginData loginData = LoginData(
                      email: emailController.text,
                      password: passController.text);
                  ref.read(authProvider.notifier).login(loginData);
                },
                child: const Text("SIGN IN")),
            const SizedBox(height: 20),
            SignInScreenLower(onPressed: () {
              Navigator.push(context,
                  CupertinoPageRoute(builder: (_) => const SingUpScreen()));
            }),
          ],
        ),
      ),
    );
  }
}
