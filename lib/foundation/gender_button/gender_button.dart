import 'package:flutter/material.dart';
import 'package:mynthra_clone/theme/colors/colors.dart';
import 'package:mynthra_clone/theme/strings/strings.dart';

class GenderButton extends StatelessWidget {
  GenderButton(
      {super.key, required this.onGenderTap, required this.genderValue});
  final Function(String value) onGenderTap;
  final String genderValue;
  final TextStyle textStyleWhite = TextStyle(color: AppColor.whites);
  final TextStyle textStyleBlack = TextStyle(color: AppColor.blacks);

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
                color: genderValue == Strings.male
                    ? AppColor.theme
                    : AppColor.transp,
                child: Center(child: Text(Strings.male, style : genderValue == Strings.male?textStyleWhite:textStyleBlack)),
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
                color: genderValue == Strings.female
                    ? AppColor.theme
                    : AppColor.transp,
                child: Center(child: Text(Strings.female, style : genderValue == Strings.female?textStyleWhite:textStyleBlack)),
              ),
            ))
      ]),
    );
  }
}
