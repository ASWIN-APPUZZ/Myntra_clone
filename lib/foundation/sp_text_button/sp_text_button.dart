import 'package:flutter/material.dart';
import 'package:mynthra_clone/theme/colors/colors.dart';

class SPTextButton extends StatelessWidget {
  const SPTextButton({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: AppColor.whites,
        child: InkWell(
            onTap: () {},
            child: Container(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 60),
                width: MediaQuery.of(context).size.width,
                child: Text(text,
                    style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: AppColor.grey)))));
  }
}