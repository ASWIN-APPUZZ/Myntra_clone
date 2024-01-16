import 'package:flutter/material.dart';
import '../../theme/colors/colors.dart';
import '../../theme/strings/strings.dart';

class SPSolidButton extends StatelessWidget {
  const SPSolidButton({super.key, required this.btntext});
  final String btntext;

  @override
  Widget build(BuildContext context) {
    
    return ElevatedButton(
        onPressed: () {},
        style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(AppColor.bgcolor)),
        child: Container(
            width: MediaQuery.of(context).size.width,
            child: Text(btntext,
                textAlign: TextAlign.center,
                style: TextStyle(color: AppColor.whites))));
  }
}
