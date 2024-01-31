import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mynthra_clone/features/categories/controller/category_controller.dart';
import 'package:mynthra_clone/features/categories/ui/main_category_tile.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  var categoryController = Get.put(CategoryController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(
          () {
            if (categoryController.loading == true) {
              return const Center(child: CircularProgressIndicator());
            } else {
              return ListView.builder(
                itemCount: categoryController.superCategory != null
                    ? categoryController.superCategory?.data.length
                    : 0,
                itemBuilder: (BuildContext context, index) {
                  return const MainCategoryTile(category: null,);
                },
              );
            }
          },
        ),
      ),
    );
  }
}
