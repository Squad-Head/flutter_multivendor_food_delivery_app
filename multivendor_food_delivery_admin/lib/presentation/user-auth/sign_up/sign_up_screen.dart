import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SingUpScreen extends HookConsumerWidget {
  const SingUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final nameController = useTextEditingController();
    final emailController = useTextEditingController();

    List role = ["Select Role -", "Admin", "Seller", "Customer"];
    var isRoleSelected;

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
              DropdownButtonFormField(
                  hint: const Text("Role"),
                  value: isRoleSelected,
                  onChanged: (newValue) {
                    useState(() {
                      isRoleSelected = newValue;
                    });
                  },
                  items: role.map((value) {
                    return DropdownMenuItem(
                      value: value,
                      child: Text(
                        value.toString(),
                        style: const TextStyle(fontSize: 18),
                      ),
                    );
                  }).toList()),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(40),
                  ),
                  onPressed: () {
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
