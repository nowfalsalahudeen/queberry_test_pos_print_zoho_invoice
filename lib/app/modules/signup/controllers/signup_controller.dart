import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:queberry_test_pos_print_zoho_invoice/app/data/database/database.dart';

import '../../../data/entity/user.dart';

class SignupController extends GetxController {
  final GlobalKey<FormState> key = GlobalKey<FormState>();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  final nameController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void signUp(BuildContext context) async {
    if (key.currentState!.validate()) {
      Get.back();
    }
    var user = User()
      ..name = nameController.text
      ..email = emailController.text
      ..password = passwordController.text;
    AppDb().then((value) => value.userDao.insertUser(user));
    Get.snackbar("Great..", "You have successfully registered", snackPosition: SnackPosition.BOTTOM);
  }
}
