import 'package:flutter/material.dart';
import 'package:mynthra_clone/features/categories/ui/sub_main_category_tile.dart';
import 'package:mynthra_clone/theme/colors/colors.dart';
import 'package:mynthra_clone/theme/strings/strings.dart';

class MainCategoryTile extends StatelessWidget {
  const MainCategoryTile();

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      collapsedBackgroundColor: Colors.teal,
      title: Container(
          height: 120,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Flexible(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          Strings.women,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                        ),
                        Icon(Icons.keyboard_arrow_down)
                      ],
                    ),
                    Text("data", style: TextStyle(fontSize: 15, color: AppColor.grey) )
                  ],
                ),
              ),
              Image.asset("assets/images/10.png")
            ],
          )),
      // leading: ,
      trailing: const SizedBox.shrink(),
      // subtitle: ,
      children:[SubMainCategoryTile()],
    );
  }
}
