import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  TextEditingController passwordController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController altMobileController = TextEditingController();
  TextEditingController hintController = TextEditingController();
  RxString gender = "".obs;
}
