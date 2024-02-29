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
import 'package:http/http.dart' as http;

Future<void> ordemDeServico(
  String cabecalho,
  int codChamado,
) async {
  final pdf = pw.Document();
  final imagem =
      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/retaguarda-v2-l8iy7a/assets/0t68cpa5afys/LOGO_JS_MANUTEN%C3%87%C3%83O_PDF.png';

  final http.Response response = await http.get(Uri.parse(imagem));
  final Uint8List imageBytes = response.bodyBytes;

  pdf.addPage(pw.MultiPage(
    pageFormat: PdfPageFormat.a4,
    build: (context) => [
      // Container para centralizar e ocupar todo o espaço horizontal
      pw.Container(
        alignment: pw.Alignment.center,
        child: pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.center,
          children: [
            pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.center,
              children: [
                // Imagem do Cabeçalho
                pw.Container(
                  margin: pw.EdgeInsets.only(right: 10),
                  child: pw.Image(pw.MemoryImage(imageBytes),
                      width: 140, height: 80),
                ),
                // Texto do Cabeçalho
                pw.Container(
                  child: pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Text(
                        cabecalho, //Variável dinâmica
                        style: pw.TextStyle(
                          fontSize: 15,
                          font: pw.Font.helvetica(),
                          fontWeight: pw.FontWeight.bold,
                        ),
                      ),
                      pw.SizedBox(height: 5),
                      pw.Text(
                        'JS DE SOUSA MANUTENÇÃO',
                        style: pw.TextStyle(
                          fontSize: 12,
                          font: pw.Font.helvetica(),
                          fontWeight: pw.FontWeight.bold,
                        ),
                      ),
                      pw.Text(
                        '10.932.732/0001-73',
                        style: pw.TextStyle(
                          fontSize: 12,
                          font: pw.Font.helvetica(),
                          fontWeight: pw.FontWeight.bold,
                        ),
                      ),
                      pw.Text(
                        'REG. IPEMFORT-CE',
                        style: pw.TextStyle(
                          fontSize: 12,
                          font: pw.Font.helvetica(),
                          fontWeight: pw.FontWeight.bold,
                        ),
                      ),
                      pw.Text(
                        'Nº 30000060',
                        style: pw.TextStyle(
                          fontSize: 12,
                          font: pw.Font.helvetica(),
                          fontWeight: pw.FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // Linha para o número do chamado
            pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.center,
              children: [
                pw.Text('Nº: $codChamado'),
                pw.SizedBox(width: 5),
              ],
            ),
          ],
        ),
      ),
    ],
  ));

  await Printing.layoutPdf(
    onLayout: (PdfPageFormat format) async => pdf.save(),
  );
}
