import 'package:flutter/material.dart';
import 'package:mynthra_clone/foundation/sp_icon/sp_icon.dart';
import 'package:mynthra_clone/theme/colors/colors.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({
    super.key,
    required this.title,
    this.subtitle,
    required this.assetname, required this.isLast,
  });

  final String title;
  final String? subtitle;
  final String assetname;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 68,
          child: ListTile(
            leading: SPIcon(assetname: assetname),
            title: Text(
              title,
              style: const TextStyle(
                color: AppColor.textcolor1,
                fontSize: 14
              )
            ),
            subtitle: subtitle != null
                ? Text(
                    subtitle!,
                    style: const TextStyle(
                      color: AppColor.textcolor1,
                      fontSize: 11,
                      fontWeight: FontWeight.w600
                    )
                  )
                : null,
            trailing: InkWell(
                onTap: () => {},
                child: const Icon(Icons.chevron_right_sharp, size: 16))
          )
        ),
        isLast ? Container() : const Divider(thickness: 0.5)
      ]
    );
  }
}