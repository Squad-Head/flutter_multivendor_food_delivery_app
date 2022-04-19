import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignUpForm extends HookConsumerWidget {
  SignUpForm({Key? key}) : super(key: key);
  List role = ["Select Role -", "Admin", "Seller", "Customer", "Guest"];
  var isRoleSelected;

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, ref) {
    final nameController = useTextEditingController();
    final emailController = useTextEditingController();
    // final roleController = useTextEditingController();
    return Scaffold(
      body: Form(
        key: _formkey,
        child: Expanded(
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
              // TextFormField(
              //   controller: roleController,

              //   decoration: InputDecoration(
              //       hintText: "Date Of Birth",
              //       suffix: IconButton(
              //           onPressed: () {
              //             pickDate(context);
              //           },
              //           icon: const Icon(Icons.calendar_today))),
              // ),
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
