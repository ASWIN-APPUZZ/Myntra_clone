import 'package:flutter/material.dart';
import 'package:mynthra_clone/foundation/sp_solid_button/sp_solid_button.dart';
import 'package:mynthra_clone/theme/colors/colors.dart';
import 'package:mynthra_clone/theme/strings/strings.dart';

class LoginBottomSheet extends StatelessWidget {
  const LoginBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      color: AppColor.whites,
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Image.asset(
              'assets/images/myntra-logo-1.png',
              height: 45,
              width: 45,
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.clear))
          ]),
          const SizedBox(height: 35),
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
          const SizedBox(height: 35),
          const SizedBox(
            height: 43,
            child: TextField(
                style: TextStyle(color: AppColor.grey, fontSize: 12),
                decoration: InputDecoration(
                    label: Text(
                      Strings.mob,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: AppColor.grey),
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 10, top: 15),
                      child: Text("+91 | ",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: AppColor.grey)),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1, color: AppColor.textcolor1)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1.5, color: AppColor.blacks)))),
          ),
          SizedBox(height: 22),
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
          SizedBox(height: 28),
          SPSolidButton(btntext: Strings.conti)
        ],
      ),
    );
  }
}
