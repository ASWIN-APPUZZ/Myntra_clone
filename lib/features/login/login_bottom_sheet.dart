import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mynthra_clone/features/login/controller/login_controller.dart';
import 'package:mynthra_clone/foundation/sp_solid_button/sp_solid_button.dart';
import 'package:mynthra_clone/foundation/sp_text_field/sp_textfield.dart';
import 'package:mynthra_clone/theme/colors/colors.dart';
import 'package:mynthra_clone/theme/strings/strings.dart';

class LoginBottomSheet extends StatelessWidget {
  LoginBottomSheet({super.key});
  var loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / 1.5,
        color: AppColor.whites,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            //MARK:- ICON
            Image.asset(
              'assets/images/myntra-logo-1.png',
              height: 45,
              width: 45,
            ),
            //MARK:- Button Close
            IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(Icons.clear))
          ]),

          const SizedBox(height: 30),

          //MARK:- Header
          RichText(
              text: const TextSpan(children: [
            TextSpan(
                text: Strings.logins,
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: AppColor.blacks)),
            TextSpan(
                text: '  or  ',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: AppColor.blacks)),
            TextSpan(
                text: Strings.signs,
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: AppColor.blacks))
          ])),

          const SizedBox(height: 30),

          //MARK:- TextFied - Mobile Number
          SPTextFormField(
            labelTxt: Strings.mob,
            textEditingController: loginController.loginEditingController,
            validator: (String? value) {},
            prefixIcon: const Text('+91 | '),
          ),

          const SizedBox(height: 20),

          //MARK:- Terms& Conditions
          RichText(
              text: const TextSpan(children: [
            TextSpan(
                text: Strings.cont + ' ',
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                    color: AppColor.grey)),
            TextSpan(
                text: Strings.terms,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: AppColor.theme)),
            TextSpan(
                text: ' & ',
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                    color: AppColor.blacks)),
            TextSpan(
                text: Strings.policy,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: AppColor.theme))
          ])),

          const SizedBox(height: 20),

          //MARK:- Submit Button
          SPSolidButton(
              btntext: Strings.conti, onpressed: loginController.login),

          const SizedBox(height: 20),

          //MARK:- Trouble in logging
          RichText(
              text: const TextSpan(children: [
            TextSpan(
                text: Strings.trouble + ' ',
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                    color: AppColor.grey)),
            TextSpan(
                text: Strings.help,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: AppColor.theme))
          ])),
        ]));
  }
}
