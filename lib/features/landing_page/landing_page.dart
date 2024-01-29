import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mynthra_clone/features/landing_page/controller/landingpage_controller.dart';
import 'package:mynthra_clone/theme/strings/strings.dart';
import 'package:mynthra_clone/features/categories/categories.dart';
import 'package:mynthra_clone/features/home/home_page.dart';
import 'package:mynthra_clone/features/profile/profile.dart';
import '../../foundation/sp_icon/sp_icon.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int currentState = 0;

  final _pages = [HomePage(), CategoriesPage(), ProfilePage()];

  get currentIndex => currentState;

  var landingPageController = Get.put(LandingPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentState],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentState,
        onTap: (newIndex) {
          setState(() {
            currentState = newIndex;
          });
        },
        unselectedItemColor: Colors.black87,
        selectedItemColor: Colors.redAccent,
        items: [
          BottomNavigationBarItem(
              icon: SPIcon(
                  assetname: 'shopping-cart.png',
                  isSelected: 0 == currentIndex),
              label: Strings.home),
          BottomNavigationBarItem(
              icon: SPIcon(
                  assetname: 'category.png', isSelected: 1 == currentIndex),
              label: Strings.cate),
          BottomNavigationBarItem(
              icon:
                  SPIcon(assetname: 'user.png', isSelected: 2 == currentIndex),
              label: Strings.profile)
        ],
      ),
    );
  }
}
