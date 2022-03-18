import 'dart:io';
import 'package:flutter/material.dart';
import 'package:pdf_practice/api_service.dart';
import 'package:pdf_practice/pdf_view_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                child: const Text(
                  'Asset PDF',
                ),
                onPressed: () async {
                  const url = 'https://www.nj.gov/education/legal/reader.pdf';
                  final file = await PDFApi.loadNetwork(url);
                  openPDF(context, file);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void openPDF(BuildContext context, File file) => Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => PdfViewerPage(file: file)),
      );
}
