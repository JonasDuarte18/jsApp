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

Future<void> ordemDeServico4(
  int codChamado,
  String dataOs,
  String? nomeContratante,
  List<EquipamentosOsStruct> equipamentos,
) async {
  final pdf = pw.Document();

  final imagem =
      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/retaguarda-v2-l8iy7a/assets/0t68cpa5afys/LOGO_JS_MANUTEN%C3%87%C3%83O_PDF.png';
  final http.Response response = await http.get(Uri.parse(imagem));
  final Uint8List imageBytes = response.bodyBytes;

  pdf.addPage(pw.MultiPage(
    pageFormat: PdfPageFormat.a4.copyWith(
      marginLeft: 10,
      marginRight: 10,
      marginTop: 10,
      marginBottom: 10,
    ),
    build: (context) => [
      pw.Container(
        alignment: pw.Alignment.topCenter,
        child: pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.center,
          children: [
            pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
              crossAxisAlignment: pw.CrossAxisAlignment.center,
              children: [
                pw.Image(pw.MemoryImage(imageBytes), width: 120, height: 120),
                pw.Padding(
                  padding: pw.EdgeInsets.only(left: 35),
                  child: pw.Column(
                    children: [
                      pw.Text(
                        'ORDEM DE SERVIÇO',
                        style: pw.TextStyle(
                          fontSize: 16,
                          font: pw.Font.helveticaBold(),
                        ),
                      ),
                      pw.Row(
                        children: [
                          pw.Text(
                            'Nº: ',
                            style: pw.TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          pw.Text(
                            '$codChamado',
                            style: pw.TextStyle(
                              color: PdfColors.red,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      pw.SizedBox(height: 3),
                      pw.Text(
                        'DATA: $dataOs',
                        style: pw.TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                pw.Text(
                  'JS DE SOUSA MANUTENÇÃO\n'
                  '10.932.732/0001-73\n'
                  'REG. IPEMFORT-CE\n'
                  'Nº 30000060',
                  textAlign: pw.TextAlign.right,
                  style: pw.TextStyle(
                    fontSize: 10,
                    font: pw.Font.helvetica(),
                  ),
                ),
              ],
            ),
            pw.SizedBox(height: 10),
            pw.Text(
              'MANUTENÇÃO PREVENTIVA',
              style: pw.TextStyle(
                fontSize: 10,
                font: pw.Font.helveticaBold(),
              ),
            ),
            pw.SizedBox(height: 5),
            pw.Row(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: nomeContratante != null && nomeContratante.isNotEmpty
                  ? [
                      pw.Text(
                        'CONTRATANTE: $nomeContratante',
                        style: pw.TextStyle(
                          fontSize: 10,
                          font: pw.Font.helveticaBold(),
                        ),
                      ),
                    ]
                  : [],
            ),
            pw.Divider(thickness: 1),
            pw.Row(
              crossAxisAlignment: pw.CrossAxisAlignment.end,
              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
              children: [
                pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Text(
                      'DADOS DO CLIENTE:',
                      style: pw.TextStyle(
                        fontSize: 10,
                        font: pw.Font.helveticaBold(),
                      ),
                    ),
                    pw.SizedBox(height: 3),
                    pw.Text(
                      'COMERCIAL DE COMBUSTÍVEIS MARQUES LTDA',
                      style: pw.TextStyle(
                        fontSize: 10,
                        font: pw.Font.helvetica(),
                      ),
                    ),
                    pw.Text(
                      '10.263.527/000.1-72',
                      style: pw.TextStyle(
                        fontSize: 10,
                        font: pw.Font.helvetica(),
                      ),
                    ),
                  ],
                ),
                pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Text(
                      'RUA MOREIRA BATISTA, ALÉM, 890',
                      style: pw.TextStyle(
                        fontSize: 10,
                        font: pw.Font.helvetica(),
                      ),
                    ),
                    pw.Text(
                      'PIQUET CARNEIRO - CE',
                      style: pw.TextStyle(
                        fontSize: 10,
                        font: pw.Font.helvetica(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            pw.Divider(thickness: 1),

            //...

            // EQUIPAMENTOS
            for (var item in equipamentos)
              EquipamentoBox(
                equipamento: item.equipamento,
              ),
          ],
        ),
      ),
    ],

    // RODAPÉ
    footer: (pw.Context context) => pw.Container(
      alignment: pw.Alignment.center,
      margin: const pw.EdgeInsets.only(top: 10),
      child: pw.Row(
        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
        children: [
          pw.Text(
            'JS MANUTENÇÃO',
            style: pw.TextStyle(
              fontSize: 12,
            ),
          ),
          pw.Text(
            'Pg: ${context.pageNumber} de ${context.pagesCount}',
            style: pw.TextStyle(
              fontSize: 12,
            ),
          ),
        ],
      ),
    ),
  ));

  await Printing.layoutPdf(
    onLayout: (PdfPageFormat format) async => pdf.save(),
  );
}

// Adicionando uma nova classe para representar a caixa de equipamento
class EquipamentoBox extends pw.StatelessWidget {
  final String equipamento;

  EquipamentoBox({
    required this.equipamento,
  });

  @override
  pw.Widget build(pw.Context context) {
    return pw.Container(
      child: pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          textoPadrao('EQUIPAMENTO: $equipamento'),
          textoPadrao('SERVIÇO: '),
          pw.Divider(thickness: 1),
        ],
      ),
    );
  }
}

pw.Widget textoPadrao(
  String text, {
  pw.FontWeight? fontWeight,
  pw.Alignment alignment = pw.Alignment.centerLeft,
  PdfColor? textColor,
}) {
  return pw.Text(
    text,
    style: pw.TextStyle(
      fontWeight: fontWeight,
      fontSize: 12, // Tamanho da fonte (ajuste conforme necessário)
      color: textColor ?? PdfColor.fromInt(0xFF000000), // Cor padrão: preto
    ),
  );
}
