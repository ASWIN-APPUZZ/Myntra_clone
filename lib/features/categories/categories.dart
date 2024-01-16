import 'package:flutter/material.dart';
import 'package:mynthra_clone/features/login/login_bottom_sheet.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [LoginBottomSheet()],
        ),
      ),
    );
  }
}
