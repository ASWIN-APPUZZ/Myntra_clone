import 'package:get/get.dart';
import 'package:mynthra_clone/service/network_handler/network_handler.dart';

class LandingPageController extends GetxController {
  RxString? token;
  RxBool loggedIn = false.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    checkLogin();
  }

  void checkLogin() async {
    var scopedToken = await NetworkHandler.getToken('');
    if (scopedToken != null) {
      token?.value = scopedToken;
      loggedIn.value = true;
      var response = await NetworkHandler.get("user-details", scopedToken);
      print(response);
    }
  }
}
