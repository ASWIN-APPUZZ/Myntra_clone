import 'package:flutter/material.dart';
import 'package:mynthra_clone/features/profile/profile_without_login.dart';
import 'package:mynthra_clone/theme/colors/colors.dart';
import 'package:mynthra_clone/theme/strings/strings.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.shadow,
        appBar: AppBar(
            title: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(Strings.profile, style: TextStyle(fontSize: 14.5))),
            backgroundColor: AppColor.transp,
            centerTitle: false),
        body: const SingleChildScrollView(child: ProfileWithoutLogin()));
  }
}