import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:mynthra_clone/features/login/controller/login_controller.dart';
import 'package:mynthra_clone/features/register/controller/register_controller.dart';
import 'package:mynthra_clone/foundation/gender_button/gender_button.dart';
import 'package:mynthra_clone/foundation/sp_solid_button/sp_solid_button.dart';
import 'package:mynthra_clone/foundation/sp_text_field/sp_textfield.dart';
import 'package:mynthra_clone/theme/colors/colors.dart';
import 'package:mynthra_clone/theme/strings/strings.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  final formKey = GlobalKey<FormState>();
  var loginController = Get.find<LoginController>();
  var registerController = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
          title: const Text(Strings.compleate,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
          centerTitle: false,
        ),
        body: SingleChildScrollView(
          child: SafeArea(
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Form(
                      key: formKey,
                      child: Column(children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      Strings.mob,
                                      style: TextStyle(
                                          fontSize: 8, color: AppColor.grey),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      loginController
                                          .loginEditingController.text,
                                      style:
                                          const TextStyle(color: AppColor.grey),
                                    )
                                  ]),
                              const Icon(
                                Icons.verified_outlined,
                                color: AppColor.greens,
                              )
                            ]),
                        const SizedBox(height: 20),
                        // MARK:- Create Password
                        SPTextFormField(
                            labelTxt: '${Strings.create} ${Strings.pwd}',
                            textEditingController:
                                registerController.passwordController,
                            validator: (value) {
                              (value) {
                                print(value);
                                if (value!.isEmpty) {
                                  return '${Strings.pwd} ${Strings.empty}';
                                }
                              };
                            }),
                        const SizedBox(height: 15),

                        //MARK:- Full Name
                        SPTextFormField(
                            labelTxt: Strings.fullname + Strings.opt,
                            textEditingController:
                                registerController.fullNameController,
                            validator: (value) {
                              (value) {
                                print(value);
                              };
                            }),
                        const SizedBox(height: 15),

                        //MARK:- Email
                        SPTextFormField(
                            labelTxt: Strings.email + Strings.opt,
                            textEditingController:
                                registerController.emailController,
                            validator: (value) {
                              (value) {
                                print(value);
                              };
                            }),
                        // const SizedBox(height: 15),

                        GenderButton(
                          onGenderTap: onGenderTap, genderValue: registerController.gender.value,
                        ),

                        const SizedBox(height: 30),

                        //MARK:- Alternate Number
                        SPTextFormField(
                            labelTxt: Strings.altr + Strings.mob,
                            textEditingController:
                                registerController.altMobileController,
                            prefixIcon: const Text('+91 | '),
                            notice: Strings.recover,
                            validator: (value) {
                              (value) {
                                print(value);
                                if (value!.isEmpty) {
                                  return '${Strings.altr} ${Strings.mob} ${Strings.empty}';
                                }
                              };
                            }),
                        const SizedBox(height: 15),

                        //MARK:- Hint Name
                        SPTextFormField(
                            labelTxt: Strings.hint,
                            textEditingController:
                                registerController.hintController,
                            notice: Strings.altHint,
                            validator: (value) {
                              (value) {
                                print(value);
                              };
                            }),
                        const SizedBox(height: 15),

                        //MARK:- Create
                        SPSolidButton(
                            btntext: Strings.createacc,
                            onpressed: () {
                              formKey.currentState!.validate();
                            })
                      ])))),
        ));
  }

  void onGenderTap(String value) {
    registerController.gender.value = value; 
    print(value);
  }
}
