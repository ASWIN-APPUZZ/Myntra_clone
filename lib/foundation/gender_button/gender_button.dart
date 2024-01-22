import 'package:flutter/material.dart';
import 'package:mynthra_clone/theme/colors/colors.dart';
import 'package:mynthra_clone/theme/strings/strings.dart';

class GenderButton extends StatelessWidget {
  const GenderButton(
      {super.key, required this.onGenderTap, required this.genderValue});
  final Function(String value) onGenderTap;
  final String genderValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration:
          BoxDecoration(border: Border.all(width: 1, color: AppColor.grey)),
      child: Row(children: [
        Flexible(
            flex: 1,
            child: InkWell(
              onTap: () {
                onGenderTap(Strings.male);
              },
              child: Container(
                color: genderValue == Strings.male? AppColor.transp:AppColor.theme,
                child: const Center(child: Text(Strings.male)),
                
                
              ),
            )),
        const VerticalDivider(
          width: 1,
          color: AppColor.grey,
        ),
        Flexible(
            flex: 1,
            child: InkWell(
              onTap: () {
                onGenderTap(Strings.female);
              },
              child: Container(
                color: genderValue == Strings.female? AppColor.transp:AppColor.theme,
                child: const Center(child: Text(Strings.female)),
              ),
            ))
      ]),
    );
  }
}
