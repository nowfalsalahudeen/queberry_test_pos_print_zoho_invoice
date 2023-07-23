import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/invoice_controller.dart';

class InvoiceView extends GetView<InvoiceController> {
  const InvoiceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InvoiceView'),
        centerTitle: true,
      ),
      body: Obx(() {
        return controller.isLoading.value
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: controller.invoiceList.length,
                itemBuilder: (context, i) {
                  var item = controller.invoiceList[i];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: ListTile(
                          title: Text(item.customerName!),
                          subtitle: Text('${item.invoiceNumber!} - ${item.date!}'),
                          trailing: Text('${item.currencyCode} ${item.total!}'),
                          onTap: () {
                            Get.toNamed(Routes.INVOICE_DETAIL,
                                arguments: {'invoice_id': item.invoiceId, 'accessToken': controller.accessToken!});
                          }),
                    ),
                  );
                },
              );
      }),
    );
  }
}
