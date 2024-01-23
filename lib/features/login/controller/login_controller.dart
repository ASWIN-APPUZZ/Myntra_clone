import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mynthra_clone/features/login/model/login_model.dart';
import 'package:mynthra_clone/features/register/register.dart';
import 'package:mynthra_clone/service/network_handler/network_handler.dart';

class LoginController extends GetxController {
  TextEditingController loginEditingController = TextEditingController();
  void login() async {
    // Get.dialog(Center(child: CircularProgressIndicator()), barrierDismissible: false);
    try {
      LoginModel loginModel = LoginModel(mobileNo: loginEditingController.text);
      var response =
          await NetworkHandler.post(loginModelToJson(loginModel), "login");
      var data = json.decode(response);
      print("Response: $data"); // Add this line for debugging

      if (data["msg"] == "Registration Successful") {
        print("Redirecting to RegisterPage"); // Add this line for debugging
        Get.to(() => RegisterPage());
      }
    } catch (error) {
      print("Error during login: $error");
    }
    
  }
}
