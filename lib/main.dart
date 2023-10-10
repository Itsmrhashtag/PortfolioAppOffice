import 'package:flutter/material.dart';
import 'package:portfolioapp/about.dart';
import 'package:portfolioapp/home.dart';
import 'package:portfolioapp/pdfviewer.dart';
import 'package:portfolioapp/project.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "home",
    routes: {
      "home": (context) => MyHome(),
      "about": (context) => MyAbout(),
      "project": (context) => MyProjects(),
      "cv": (context) => PdfViewer(),
    },
  ));
}
