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

Future<void> ordemDeServico5(
  int codChamado,
  String dataOs,
  String? nomeContratante,
  String razaoSocial,
  List<EquipamentosOsStruct> equipamentos,
  String cnpj,
  String endereco,
  String cidadeEstado,
  String motivoChamado,
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
    header: (pw.Context context) {
      return pw.Container(
        margin: const pw.EdgeInsets.only(bottom: 5),
        child: pw.Row(
          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Image(pw.MemoryImage(imageBytes), width: 120, height: 120),
            pw.Padding(
              padding: pw.EdgeInsets.only(left: 12.0),
              child: pw.Column(
                children: [
                  pw.Text(
                    'ORDEM DE SERVIÇO',
                    style: pw.TextStyle(
                      fontSize: 14,
                      font: pw.Font.helveticaBold(),
                    ),
                  ),
                  pw.Row(
                    children: [
                      pw.Text(
                        'Nº: ',
                        style: pw.TextStyle(
                          fontSize: 10,
                          font: pw.Font.helvetica(),
                        ),
                      ),
                      pw.Text(
                        '$codChamado',
                        style: pw.TextStyle(
                          color: PdfColors.red,
                          fontSize: 10,
                          font: pw.Font.helvetica(),
                        ),
                      ),
                    ],
                  ),
                  pw.SizedBox(height: 3),
                  pw.Text(
                    'DATA: $dataOs',
                    style: pw.TextStyle(
                      fontSize: 10,
                      font: pw.Font.helvetica(),
                    ),
                  ),
                ],
              ),
            ),
            pw.Text(
              'JS DE SOUSA MANUTENÇÃO\n'
              '10.932.732/0001-73\n'
              'REG. IPEMFORT-CE\n'
              'Nº 30000060\n'
              '\n'
              'Página: ${context.pageNumber} de ${context.pagesCount}',
              textAlign: pw.TextAlign.right,
              style: pw.TextStyle(
                fontSize: 10,
                font: pw.Font.helvetica(),
              ),
            ),
          ],
        ),
      );
    },
    build: (context) => [
      pw.Container(
        alignment: pw.Alignment.topCenter,
        child: pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.center,
          children: [
            pw.Text(
              '$motivoChamado',
              style: pw.TextStyle(
                fontSize: 10,
                font: pw.Font.helveticaBold(),
              ),
            ),

            pw.Row(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: nomeContratante != null && nomeContratante.isNotEmpty
                  ? [
                      pw.Text(
                        'CONTRATANTE: $nomeContratante',
                        style: pw.TextStyle(
                          fontSize: 8,
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
                        fontSize: 8,
                        font: pw.Font.helveticaBold(),
                      ),
                    ),
                    pw.SizedBox(height: 3),
                    pw.Text(
                      '$razaoSocial',
                      style: pw.TextStyle(
                        fontSize: 8,
                        font: pw.Font.helvetica(),
                      ),
                    ),
                    pw.Text(
                      '$cnpj',
                      style: pw.TextStyle(
                        fontSize: 8,
                        font: pw.Font.helvetica(),
                      ),
                    ),
                  ],
                ),
                pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Text(
                      '$endereco',
                      style: pw.TextStyle(
                        fontSize: 8,
                        font: pw.Font.helvetica(),
                      ),
                    ),
                    pw.Text(
                      '$cidadeEstado',
                      style: pw.TextStyle(
                        fontSize: 8,
                        font: pw.Font.helvetica(),
                      ),
                    ),
                  ],
                ),
                pw.SizedBox(width: 6),
              ],
            ),
            pw.Divider(thickness: 1),

            //...

            // EQUIPAMENTOS
            for (var item in equipamentos)
              EquipamentoBox(
                equipamento: item.equipamento,
                marca: item.marca,
                nSerie: item.nSerie,
                modelo: item.modelo,
                portAprov: item.portAprov,
                nInmetro: item.nInmetro,
                afeIniMax: item.afeIniMax,
                afeIniMin: item.afeIniMin,
                afeFinMax: item.afeFinMax,
                afeFinMin: item.afeFinMin,
                vazao: item.vazao,
                encerranteIni: item.encerranteIni,
                encerranteFin: item.encerranteFin,
                volRetirado: item.volRetirado,
                lacresRetPainel: item.lacresRetPainel,
                lacresColPainel: item.lacresColPainel,
                lacresRetCorpo: item.lacresRetCorpo,
                lacresColCorpo: item.lacresColCorpo,
                selosRet: item.selosRet,
                selosCol: item.selosCol,
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
        mainAxisAlignment: pw.MainAxisAlignment.center,
        children: [
          pw.Text(
            'Rua Engenheiro José Batista, 379 - Triângulo - 63.040-750 - Juazeiro do Norte-CE, (88) 3511-1684, comercial@jsmanutencao.com, www.jsmanutencaodeposto.com.br',
            style: pw.TextStyle(
              fontSize: 7,
              font: pw.Font.helvetica(),
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
  final String nSerie;
  final String marca;
  final String modelo;
  final String portAprov;
  final String nInmetro;
  final String afeIniMax;
  final String afeIniMin;
  final String afeFinMax;
  final String afeFinMin;
  final String vazao;
  final String encerranteIni;
  final String encerranteFin;
  final String volRetirado;
  final List<String> lacresRetPainel;
  final List<String> lacresColPainel;
  final List<String> lacresRetCorpo;
  final List<String> lacresColCorpo;
  final List<String> selosRet;
  final List<String> selosCol;

  EquipamentoBox({
    required this.equipamento,
    required this.nSerie,
    required this.marca,
    required this.modelo,
    required this.portAprov,
    required this.nInmetro,
    required this.afeIniMax,
    required this.afeIniMin,
    required this.afeFinMax,
    required this.afeFinMin,
    required this.vazao,
    required this.encerranteIni,
    required this.encerranteFin,
    required this.volRetirado,
    required this.lacresRetPainel,
    required this.lacresColPainel,
    required this.lacresRetCorpo,
    required this.lacresColCorpo,
    required this.selosRet,
    required this.selosCol,
  });

  @override
  pw.Widget build(pw.Context context) {
    return pw.Container(
      child: pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.Text(
            '$equipamento',
            style: pw.TextStyle(
              fontSize: 8,
              font: pw.Font.helveticaBold(),
            ),
          ),
          pw.SizedBox(height: 3),
          pw.Row(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
            children: [
              textoPadrao(
                'Nº SÉRIE: $nSerie\n'
                'MARCA: $marca\n'
                'MODELO: $modelo\n'
                'PORT. APROVAÇÃO: $portAprov\n'
                'Nº INMETRO: $nInmetro',
                textColor: PdfColor.fromInt(0x0057DB),
              ),
              textoPadrao('AFERIÇÃO INICIAL MAX: -20 ml\n'
                  'AFERIÇÃO INICIAL MIN: 0 ml\n'
                  'AFERIÇÃO FINAL MAX: +20 ml\n'
                  'AFERIÇÃO FINAL MIN: 0 ml\n'
                  'VAZÃO: 102 L/m'),
              textoPadrao('TOTALIZADOR INICIAL: 12000 L\n'
                  'VOLUME RETIRADO: 652 L\n'
                  'TOTALIZADOR FINAL: 52152\n'),
            ],
          ),
          pw.SizedBox(height: 5),
          pw.Row(
            children: [
              pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  textoPadrao('SELO(S) RETIRADO(S): '),
                  pw.Row(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      textoPadrao('| 3I36536'),
                      pw.SizedBox(width: 4),
                      textoPadrao('| 3I36536'),
                      pw.SizedBox(width: 4),
                      textoPadrao('| 3I36536'),
                      pw.SizedBox(width: 4),
                    ],
                  ),
                  pw.SizedBox(height: 5),
                  textoPadrao('LACRE(S) RETIRADO(S) [PAINEL]: '),
                  pw.Row(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      textoPadrao('$lacresRetPainel; '),
                    ],
                  ),
                  textoPadrao('LACRE(S) RETIRADO(S) [CORPO]: '),
                  pw.Row(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      textoPadrao('3I36536'),
                      pw.SizedBox(width: 4),
                      textoPadrao('3I36536'),
                      pw.SizedBox(width: 4),
                      textoPadrao('3I36536'),
                      pw.SizedBox(width: 4),
                    ],
                  ),
                ],
              ),
              pw.SizedBox(width: 91),
              pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                mainAxisAlignment: pw.MainAxisAlignment.center,
                children: [
                  textoPadrao('SELO(S) COLOCADO(S): '),
                  pw.Row(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      textoPadrao('3I36536'),
                      pw.SizedBox(width: 4),
                      textoPadrao('3I36536'),
                      pw.SizedBox(width: 4),
                      textoPadrao('3I36536'),
                      pw.SizedBox(width: 4),
                    ],
                  ),
                  pw.SizedBox(height: 5),
                  textoPadrao('LACRE(S) COLOCADO(S) [PAINEL]: '),
                  pw.Row(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      textoPadrao(
                        '${lacresColPainel.join(' | ')}', // Convertendo a lista em uma string separada por ';'
                        textColor: PdfColor.fromInt(0x0057DB),
                      ),
                    ],
                  ),
                  textoPadrao('LACRE(S) COLOCADO(S) [CORPO]: '),
                  pw.Row(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      textoPadrao('3I36536'),
                      pw.SizedBox(width: 4),
                      textoPadrao('3I36536'),
                      pw.SizedBox(width: 4),
                      textoPadrao('3I36536'),
                      pw.SizedBox(width: 4),
                    ],
                  ),
                ],
              ),
            ],
          ),
          pw.SizedBox(height: 10),
          pw.Row(
            children: [
              pw.Column(
                children: [
                  textoPadrao('DESCRIÇÃO'),
                  textoPadrao('DESCRIÇÃO'),
                  textoPadrao('DESCRIÇÃO'),
                ],
              ),
            ],
          ),
          pw.Divider(
            thickness: 1,
            borderStyle: pw.BorderStyle.dashed,
          ),
        ],
      ),
    );
  }
}

pw.Widget textoPadrao(
  String text, {
  pw.FontWeight? fontWeight,
  pw.Font? font,
  pw.Alignment alignment = pw.Alignment.centerLeft,
  PdfColor? textColor,
}) {
  return pw.Text(
    text,
    style: pw.TextStyle(
      fontSize: 8,
      font: pw.Font.helvetica(),
      fontWeight: pw.FontWeight.bold,
      color: textColor ?? PdfColor.fromInt(0xFF000000),
    ),
  );
}
