import 'package:flutter/material.dart';
import 'package:mynthra_clone/features/categories/ui/main_category_tile.dart';
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
          children: [
            MainCategoryTile(),
          ],
        ),
      ),
    );
  }
}
