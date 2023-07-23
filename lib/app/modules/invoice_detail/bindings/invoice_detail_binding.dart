import 'package:get/get.dart';

import '../controllers/invoice_detail_controller.dart';

class InvoiceDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InvoiceDetailController>(
      () => InvoiceDetailController(),
    );
  }
}
