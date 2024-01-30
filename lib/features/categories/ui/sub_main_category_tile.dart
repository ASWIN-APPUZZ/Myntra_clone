import 'package:flutter/material.dart';
import 'package:mynthra_clone/features/categories/ui/last_category.dart';

class SubMainCategoryTile extends StatelessWidget {
  const SubMainCategoryTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      leading: Image.asset('assets/images/10.png'),
      title: Text("TopWear", style: TextStyle(fontWeight: FontWeight.bold),),
      children: [LastCategory()],);
  }
}