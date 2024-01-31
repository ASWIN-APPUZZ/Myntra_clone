import 'dart:convert';

import 'package:get/get.dart';
import 'package:mynthra_clone/features/categories/model/super_category_model.dart';
import 'package:mynthra_clone/service/network_handler/network_handler.dart';

class CategoryController extends GetxController {
  RxBool loading = false.obs;
  SuperCategory? superCategory;

  @override
  void onInit() {
    super.onInit();
    getCategory();
  }

  void getCategory() async {
    loading(true);
    var response = await NetworkHandler.get("category-details", "");
    superCategory = SuperCategory.fromJson(json.decode(response));
    loading(false);
  }
}
