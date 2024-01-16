import 'package:flutter/material.dart';
import 'package:mynthra_clone/features/profile/profile_content.dart';
import 'package:mynthra_clone/foundation/profile_item/profile_item.dart';
import 'package:mynthra_clone/foundation/sp_solid_button/sp_solid_button.dart';
import 'package:mynthra_clone/theme/colors/colors.dart';
import 'package:mynthra_clone/theme/strings/strings.dart';

class ProfileWithoutLogin extends StatelessWidget {
  const ProfileWithoutLogin({super.key});
  final double topContainerHeight = 190;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          height: topContainerHeight,
          child: Stack(children: [
            Column(children: [
              Container(height: topContainerHeight * .58, color: AppColor.grey),
              Container(
                  height: topContainerHeight * .42, color: AppColor.whites)
            ]),
            Positioned(
                bottom: 20,
                left: 20,
                child: SizedBox(
                    height: 132,
                    width: 123,
                    child: Card(
                      elevation: .5,
                      child: Container(
                          padding: EdgeInsets.all(25),
                          child: Image.asset('assets/images/man-avatar.png')),
                    ))),
            Positioned(
                bottom: 22,
                left: 150,
                child: Container(
                  width: MediaQuery.of(context).size.width/1.7,
                  child: SPSolidButton(
                    btntext: Strings.login + '/' + Strings.sign,
                  ),
                )),
          ])),
      const SizedBox(height: 15),
      Container(
          color: AppColor.whites,
          child: const Column(children: [
            ProfileItem(
                title: 'Orders',
                subtitle: 'Check your order status',
                assetname: 'orders.png',
                isLast: false),
            ProfileItem(
                title: 'Help Center',
                subtitle: 'Help regarding your recent purchase',
                assetname: 'Help.png',
                isLast: false),
            ProfileItem(
                title: 'Wishlist',
                subtitle: 'Your most loved style',
                assetname: 'heart.png',
                isLast: true)
          ])),
      const SizedBox(height: 15),
      Container(
          color: AppColor.whites,
          child: const Column(children: [
            ProfileItem(
                title: 'Scan for coupon', assetname: 'qr.png', isLast: false),
            ProfileItem(
                title: 'Refer & Earn', assetname: 'envelope.png', isLast: true)
          ])),
      const SizedBox(height: 15),
      const FooterContent(),
      const SizedBox(height: 20),
      Positioned(
          bottom: 22,
          child: Text(
            Strings.version,
            style: TextStyle(color: AppColor.textcolor1, fontSize: 10),
          )),
      const SizedBox(height: 130),
    ]);
  }
}
