import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BaseController extends GetxController {
  void showAlertDialog({title = String, description = String}) {
    Get.defaultDialog(
        contentPadding: const EdgeInsets.fromLTRB(8, 20, 8, 0),
        titlePadding: const EdgeInsets.fromLTRB(8, 20, 8, 0),
        titleStyle: const TextStyle(color: Colors.blueAccent),
        title: "Demo",
        content: Column(
          children: [
            Text(description), Container(margin: const EdgeInsets.fromLTRB(0, 20, 20, 0),
              child: Align(
                alignment: Alignment.centerRight,
                child: TextButton(onPressed: () {
                  Get.back();
                },
                    child: const Text("Ok")),
              ),),
          ],
        ));
  }
}
