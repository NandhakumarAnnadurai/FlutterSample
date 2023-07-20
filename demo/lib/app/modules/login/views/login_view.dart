import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextField(
            controller: controller.userNameEditingController,
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.blue)),
                hintText: "username",
                icon: Icon(Icons.account_circle_outlined)),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: TextField(
              controller: controller.passWordEditingController,
              obscureText: true,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Colors.blue)),
                  hintText: "password",
                  icon: Icon(Icons.password)),
            ),
          ),
          Container(
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(child: const Text("Login"),
                    onPressed: () => controller.login(),),
              )
          ),
        ],
      ),
    ));
  }
}
