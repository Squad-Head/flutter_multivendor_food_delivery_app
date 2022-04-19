import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:multivendor_food_delivery_admin/application/auth/auth_provider.dart';
import 'package:multivendor_food_delivery_admin/application/auth/auth_state.dart';
import 'package:multivendor_food_delivery_admin/domain/auth/registration_data.dart';
import 'package:multivendor_food_delivery_admin/domain/auth/user_data.dart';
import 'package:multivendor_food_delivery_admin/domain/core/failure.dart';
import 'package:multivendor_food_delivery_admin/presentation/auth/components/leading_form_icon.dart';
import 'package:multivendor_food_delivery_admin/presentation/auth/sign_in/sign_in_screen.dart';
import 'package:multivendor_food_delivery_admin/presentation/dashboard/dashboard_screen.dart';

class SingUpScreen extends HookConsumerWidget {
  const SingUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final nameController = useTextEditingController();
    final passController = useTextEditingController();

    final emailController = useTextEditingController();

    ref.listen<AuthState>(authProvider, (previous, next) {
      if (previous?.loading != next.loading && !next.loading) {
        if (next.user != UserData.none()) {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (ctx) => const DashboardScreen()));
        } else if (next.failure != Failure.none()) {
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
      //  backgroundColor: AppColor.secondaryColor,
      appBar: AppBar(
        title: const Text("Sign Up"),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: Form(
          child: ListView(
            children: [
              TextFormField(
                controller: nameController,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  labelText: "Full Name",
                ),
              ),
              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: "Enter your email",
                ),
              ),
              TextFormField(
                controller: passController,
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: const InputDecoration(
                  icon: LeadingFormIcon(icon: Icons.lock),
                  labelText: "Passowrd",
                ),
              ),
              // DropdownButtonFormField(
              //     hint: const Text("Role"),
              //     value: isRoleSelected,
              //     onChanged: (newValue) {
              //       useState(() {
              //         isRoleSelected = newValue;
              //       });
              //     },
              //     items: role.map((value) {
              //       return DropdownMenuItem(
              //         value: value,
              //         child: Text(
              //           value.toString(),
              //           style: const TextStyle(fontSize: 18),
              //         ),
              //       );
              //     }).toList()),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(40),
                  ),
                  onPressed: () {
                    final RegistrationData registrationData = RegistrationData(
                        name: nameController.text,
                        role: 'Admin',
                        email: emailController.text,
                        password: passController.text);
                    ref
                        .read(authProvider.notifier)
                        .registration(registrationData);
                    //  addUserFormData();
                  },
                  child: const Text("Sign Up")),
            ],
          ),
        ),
      ),
    );
  }
}
