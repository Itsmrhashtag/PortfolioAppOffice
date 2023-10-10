import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

class PdfViewer extends StatefulWidget {
  const PdfViewer({super.key});

  @override
  State<PdfViewer> createState() => _PdfViewerState();
}

class _PdfViewerState extends State<PdfViewer> {
  late PdfController pdfController;

  loadController() {
    pdfController =
        PdfController(document: PdfDocument.openAsset("pdf/cv.pdf"));
  }

  @override
  void initState() {
    super.initState();
    loadController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CV"),
        backgroundColor: Color(0xff252525),
      ),
      body: Center(
        child: PdfView(controller: pdfController),
      ),
    );
  }
}
