// ignore_for_file: public_member_api_docs

import 'dart:typed_data';

import 'package:ecommerce/presentation/views/cart/checkout_page.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class InvoicePage extends StatelessWidget {
  const InvoicePage({Key? key, required this.cart}) : super(key: key);
  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Sales Invoice')),
        body: PdfPreview(
          build: (format) => _generatePdf(format),
        ),
      ),
    );
  }

  Future<Uint8List> _generatePdf(PdfPageFormat format) async {
    final pdf = pw.Document(version: PdfVersion.pdf_1_5, compress: true);

    pdf.addPage(
      pw.Page(
        pageFormat: format,
        build: (context) {
          return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Text('ShoeLand',
                  style: pw.TextStyle(
                      fontSize: 20, fontWeight: pw.FontWeight.bold)),
              pw.SizedBox(height: 16),
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Text('Invoice Number: INV001'),
                      pw.SizedBox(height: 8),
                      pw.Text(
                          'Date: ${DateFormat.yMMMd().format(DateTime.now())}'),
                    ],
                  ),
                  pw.Text('Customer: ${cart.items[0].name ?? ''}'),
                ],
              ),
              pw.Divider(),
              pw.SizedBox(height: 16),
              pw.Text('Product Details',
                  style: pw.TextStyle(
                      fontSize: 18, fontWeight: pw.FontWeight.bold)),
              pw.SizedBox(height: 8),
              pw.TableHelper.fromTextArray(
                context: context,
                data: <List>[
                  <String>['Product', 'Quantity', 'Price', 'Total'],
                  for (var i in cart.items)
                    [i.product.name, i.quantity, i.totalPrice, i.totalPrice]
                ],
                headerStyle: pw.TextStyle(fontWeight: pw.FontWeight.bold),
                cellAlignment: pw.Alignment.centerLeft,
                cellStyle: const pw.TextStyle(fontSize: 14),
                border: pw.TableBorder.all(),
              ),
              pw.SizedBox(height: 16),
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.end,
                children: [
                  pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.end,
                    children: [
                      pw.Text('Subtotal: \$${cart.totalPrice}'),
                      pw.SizedBox(height: 8),
                      pw.Text('Tax: \$18.00'),
                      pw.SizedBox(height: 8),
                      pw.Text('Total: \$${cart.totalPrice - 18}',
                          style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                    ],
                  ),
                ],
              ),
              //  pw.Flexible(child: pw.FlutterLogo())
            ],
          );
        },
      ),
    );

    return pdf.save();
  }
}
