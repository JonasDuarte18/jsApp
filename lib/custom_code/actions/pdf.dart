// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

//Código completo da Custom Action

import 'package:printing/printing.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

Future pdf(
  String cabecalho,
) async {
  final pdf = pw.Document();

  // Adiciona uma nova página ao documento PDF, usando o formato de página A4
  pdf.addPage(pw.MultiPage(
    pageFormat: PdfPageFormat.a4,

    // Inicia a construção das páginas
    build: (context) => [
      //Cabeçalho
      pw.Column(
        children: [
          pw.Row(
            mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
            children: [
              // Texto do Cabeçalho
              pw.Text(
                cabecalho, //Variável dinâmica
                style: pw.TextStyle(
                  fontSize: 30,
                  font: pw.Font.helvetica(),
                ), // Estilização da Fonte
              ),
            ],
          ),
          pw.SizedBox(height: 10),
          pw.Divider(thickness: 1),
        ],
      ),
    ],
  ));

  await Printing.layoutPdf(
      onLayout: (PdfPageFormat format) async => pdf.save());
}
