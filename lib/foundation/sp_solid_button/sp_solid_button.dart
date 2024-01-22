import 'package:flutter/material.dart';
import '../../theme/colors/colors.dart';

class SPSolidButton extends StatelessWidget {
  const SPSolidButton({super.key, required this.btntext, this.onpressed});
  final String btntext;
  final Function()? onpressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onpressed,
        style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(AppColor.bgcolor)),
        child: Container(
            width: MediaQuery.of(context).size.width,
            child: Text(btntext,
                textAlign: TextAlign.center,
                style: const TextStyle(color: AppColor.whites))));
  }
}
