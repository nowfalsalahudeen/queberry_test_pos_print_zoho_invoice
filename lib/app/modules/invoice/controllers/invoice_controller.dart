import 'package:get/get.dart';
import 'package:queberry_test_pos_print_zoho_invoice/app/data/network/http_client.dart';

import '../../../data/entity/invoices_response.dart';

class InvoiceController extends GetxController {
  String? code;

  var invoiceList = <Invoices>[].obs;
  String? accessToken;
  var isLoading = true.obs;
  @override
  void onInit() {
    super.onInit();
    code = Get.arguments['code'];
  }

  @override
  void onReady() {
    super.onReady();
    getInvoices();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void getInvoices() async {
    HttpClient().getAccessToken(code: code!).then((value) {
      accessToken = value.accessToken;
      HttpClient().getInvoices(accessToken: value.accessToken!).then((value) {
        invoiceList.value = value.invoices!;
        isLoading.value = false;
      }).onError((error, stackTrace) {
        Get.snackbar("Error", 'Unable to get data');
      });
      ;
    }).onError((error, stackTrace) {
      Get.snackbar("Error", 'Unable to get data from server - token error');
    });
  }
}
