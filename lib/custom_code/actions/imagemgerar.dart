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

import 'package:printing/printing.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:http/http.dart' as http;

Future imagemgerar() async {
  final pdf = pw.Document();
  final imagem =
      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/retaguarda-v2-l8iy7a/assets/0t68cpa5afys/LOGO_JS_MANUTEN%C3%87%C3%83O_PDF.png';

  final http.Response response = await http.get(Uri.parse(imagem));
  final Uint8List imageBytes = response.bodyBytes;

  pdf.addPage(pw.Page(
    build: (pw.Context context) {
      return pw.Image(pw.MemoryImage(imageBytes));
    },
  ));

  await Printing.layoutPdf(
      onLayout: (PdfPageFormat format) async => pdf.save());
}
