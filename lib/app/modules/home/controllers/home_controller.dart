import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../routes/app_pages.dart';

class HomeController extends GetxController {
  late WebViewController controller;
  @override
  void onInit() {
    super.onInit();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://nowfal.in/')) {
              var uri = Uri.parse(request.url);
              var code = uri.queryParameters['code'];
              generateAccessToken(code!);
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(
          'https://accounts.zoho.com/oauth/v2/auth?scope=ZohoInvoice.invoices.CREATE,ZohoInvoice.invoices.READ,ZohoInvoice.invoices.UPDATE,ZohoInvoice.invoices.DELETE&client_id=1000.F7W17ACNFC39ON5UCTTIMG7YLMQOXJ&state=testing&response_type=code&redirect_uri=https://nowfal.in&access_type=offline'));
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void logout() async {
    Get.offAllNamed(Routes.LOGIN);
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isLoggedIn', false);
  }

  void generateAccessToken(String code) {
    Get.toNamed(Routes.INVOICE, arguments: {'code': code});
  }
}
