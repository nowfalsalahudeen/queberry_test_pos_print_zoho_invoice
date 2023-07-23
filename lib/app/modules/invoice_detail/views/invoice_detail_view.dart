import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/invoice_detail_controller.dart';

class InvoiceDetailView extends GetView<InvoiceDetailController> {
  const InvoiceDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InvoiceDetailView'),
        centerTitle: true,
      ),
      body: Obx(() {
        return SingleChildScrollView(
          child: controller.isLoading.value
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Card(
                          color: Colors.grey[200],
                          child: ListTile(
                            title: Text(controller.invoiceData!.customerName!),
                            subtitle:
                                Text('${controller.invoiceData!.invoiceNumber!} - ${controller.invoiceData!.date!}'),
                            trailing: Text('${controller.invoiceData!.currencyCode} ${controller.invoiceData!.total!}'),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Items'),
                        ),
                        ListView.builder(
                          itemCount: controller.invoiceData?.lineItems!.length,
                          shrinkWrap: true,
                          itemBuilder: (context, i) {
                            var lineItem = controller.invoiceData?.lineItems![i];
                            return Card(
                              child: ListTile(
                                title: Text('${lineItem?.description}'),
                                subtitle: Text('${lineItem?.description}'),
                                trailing: Text('${lineItem?.quantity} x ${lineItem?.rate}'),
                              ),
                            );
                          },
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  'Subtotal: ${controller.invoiceData!.currencyCode} ${controller.invoiceData!.subTotal!}'),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  'Tax: ${controller.invoiceData!.currencyCode} ${controller.invoiceData!.taxTotal!}'),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  'Total: ${controller.invoiceData!.currencyCode} ${controller.invoiceData!.total!}'),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  controller.generatePdfInvoice(controller.invoiceData!);
                                },
                                child: const Text('Send Invoice')),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(),
                        const SizedBox(
                          height: 10,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Printer Settings'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            controller: controller.ipTextController,
                            keyboardType: TextInputType.text,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Printer IP',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            controller: controller.portTextController,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Printer Port',
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  controller.doPrint(controller.invoiceData!);
                                },
                                child: const Text('Print Invoice')),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
        );
      }),
    );
  }
}
