import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:queberry_test_pos_print_zoho_invoice/app/data/database/database.dart';
import 'package:queberry_test_pos_print_zoho_invoice/app/routes/app_pages.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  final GlobalKey<FormState> key = GlobalKey<FormState>();
  final emailController = TextEditingController(text: "");
  final passwordController = TextEditingController(text: "");

  @override
  void onInit() async {
    super.onInit();
    checkLogin();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void doLogin() async {
    if (key.currentState!.validate()) {
      Get.back();
    }
    var user = AppDb().then((value) =>
        value.userDao.findUserByEmailAndPassword(emailController.text.toString(), passwordController.text.toString()));
    user.then((value) async {
      print(value);
      if (value != null) {
        Get.snackbar("Great..", "You have successfully logged in", snackPosition: SnackPosition.BOTTOM);
        Get.toNamed(Routes.HOME);
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setBool('isLoggedIn', true);
      } else {
        Get.snackbar("Oops..", "Invalid credentials", snackPosition: SnackPosition.BOTTOM);
      }
    });
  }

  void checkLogin() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    print('isLoggedIn ${prefs.getBool('isLoggedIn')}');
    if (prefs.getBool('isLoggedIn') ?? false) {
      Get.offAllNamed(Routes.HOME);
    }
  }
}
