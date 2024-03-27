import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  RxBool loader = false.obs;

  loginApi() async {
    try {
      loader.value = true;
      final response = await post(Uri.parse("https://reqres.in/api/login"),
          body: {
            'email': emailController.value.text,
            'password': passwordController.value.text
          });
      var data = jsonDecode(response.body);
      print(response.statusCode);
      print(data);
      if (response.statusCode == 200) {
        loader.value = false;
        Get.snackbar("Login Successfull", "Welcome");
      } else {
        loader.value = false;
        Get.snackbar("Login Failed", data['error']);
      }
    } catch (e) {
      loader.value = false;
      Get.snackbar("Error", e.toString());
    }
  }
}
