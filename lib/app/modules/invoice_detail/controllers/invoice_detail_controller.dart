import 'dart:io';
import 'dart:typed_data';

import 'package:esc_pos_printer/esc_pos_printer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share/share.dart';

import '../../../data/entity/invoice_details_response.dart';
import '../../../data/network/http_client.dart';
import 'package:pdf/widgets.dart' as pw;

import 'package:esc_pos_utils/esc_pos_utils.dart';

class InvoiceDetailController extends GetxController {
  String? accessToken;
  InvoiceData? invoiceData;
  var isLoading = true.obs;

  var portTextController = TextEditingController(text: '9100');
  var ipTextController = TextEditingController(text: '192.168.1.100');
  @override
  void onInit() {
    super.onInit();
    accessToken = Get.arguments['accessToken'];
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
    HttpClient().getInvoicesDetails(accessToken: accessToken!).then((value) {
      invoiceData = value.invoiceData;
      isLoading.value = false;
    }).onError((error, stackTrace) {
      Get.snackbar("Error", 'Unable to get data from server');
    });
    ;
  }

  Future<Uint8List> generatePdfInvoice(InvoiceData invoiceData) async {
    final pdf = pw.Document();

    pw.Widget itemRow(String itemName, double quantity, double price) {
      return pw.Row(
        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
        children: [
          pw.Text(itemName),
          pw.Text(quantity.toString()),
          pw.Text(price.toStringAsFixed(2)),
        ],
      );
    }

    // Create the PDF content
    pdf.addPage(
      pw.MultiPage(
        build: (pw.Context context) => [
          pw.Center(
            child: pw.Text('Invoice #${invoiceData.invoiceNumber}'),
          ),
          pw.SizedBox(height: 20),
          pw.Text('Customer Information:'),
          pw.Text('Name: ${invoiceData.customerName}'),
          pw.Text('Email: ${invoiceData.email}'),
          pw.SizedBox(height: 20),
          pw.Text('Items:'),
          pw.Container(
            child: pw.Table(
              children: [
                pw.TableRow(children: [
                  pw.Text('Item Name', style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                  pw.Text('Quantity', style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                  pw.Text('Price', style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                ]),
                ...?invoiceData.lineItems?.map((item) {
                  return pw.TableRow(children: [
                    pw.Text(item.description!),
                    pw.Text('${item.quantity}'),
                    pw.Text('${item.itemTotal}'),
                  ]);
                }).toList(),
              ],
            ),
          ),
          pw.SizedBox(height: 20),
          pw.Text('Total Amount: ${invoiceData.total}'),
        ],
      ),
    );

    pdf.save().then((value) async {
      sendPdfViaShareIntent(value);
    });
    return pdf.save();
  }

  void sendPdfViaShareIntent(Uint8List pdfBytes) async {
    final pdfPath = await savePdfLocally(pdfBytes); // Save PDF to local storage

    await Share.shareFiles([pdfPath], text: 'Please find the attached invoice.');
  }

  // Send email with PDF attachment
  Future<String> savePdfLocally(Uint8List pdfBytes) async {
    final directory = await getApplicationDocumentsDirectory();
    final pdfPath = '${directory.path}/${DateTime.now().millisecondsSinceEpoch}.pdf';
    final pdfFile = File(pdfPath);
    await pdfFile.writeAsBytes(pdfBytes);
    return pdfPath;
  }

  void doPrint(InvoiceData invoiceData) async {
    // printer using esc_pos_printer (wifi network thermal printer)
    if (ipTextController.text.isEmpty || portTextController.text.isEmpty) {
      Get.snackbar('Error', 'Please enter printer port and ip',
          snackPosition: SnackPosition.BOTTOM, colorText: Colors.red);
      return;
    }
    Get.snackbar('Printer', 'Connecting to the printer', snackPosition: SnackPosition.BOTTOM, colorText: Colors.green);
    const PaperSize paper = PaperSize.mm80;
    final profile = await CapabilityProfile.load();
    final printer = NetworkPrinter(paper, profile);

    final PosPrintResult res = await printer.connect(ipTextController.text, port: int.parse(portTextController.text));

    if (res == PosPrintResult.success) {
      Get.snackbar('Printer', 'Connected');
      appendPrintData(printer, invoiceData);
      printer.disconnect();
    } else if (res == PosPrintResult.printerNotSelected) {
      Get.snackbar('Printer', 'Printer not selected', snackPosition: SnackPosition.BOTTOM, colorText: Colors.red);
    } else if (res == PosPrintResult.timeout) {
      Get.snackbar('Printer', 'Printer connetion timeout', snackPosition: SnackPosition.BOTTOM, colorText: Colors.red);
    } else {
      Get.snackbar('Printer', 'Unable to connect printer', snackPosition: SnackPosition.BOTTOM, colorText: Colors.red);
    }
    Get.snackbar('Print result', res.msg);
  }

  void appendPrintData(NetworkPrinter printer, InvoiceData invoiceData) {
    printer.text('Invoice #${invoiceData.invoiceNumber}', styles: const PosStyles(align: PosAlign.center, bold: true));
    printer.text('Customer Information:');
    printer.text('Name: ${invoiceData.customerName}');
    printer.text('Email: ${invoiceData.email}');
    printer.text('Items:', styles: const PosStyles(align: PosAlign.left, bold: true));
    invoiceData.lineItems?.forEach((item) {
      printer.text('${item.description} x ${item.quantity} \$${item.itemTotal}');
    });
    printer.text('Total Amount: \$${invoiceData.total}', styles: const PosStyles(align: PosAlign.left, bold: true));
    printer.text('Thank you!', styles: const PosStyles(align: PosAlign.center));

    printer.feed(2);
    printer.cut();
  }
}
