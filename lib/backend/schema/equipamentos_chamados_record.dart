import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EquipamentosChamadosRecord extends FirestoreRecord {
  EquipamentosChamadosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "numero_inmetro" field.
  String? _numeroInmetro;
  String get numeroInmetro => _numeroInmetro ?? '';
  bool hasNumeroInmetro() => _numeroInmetro != null;

  // "equipamento" field.
  String? _equipamento;
  String get equipamento => _equipamento ?? '';
  bool hasEquipamento() => _equipamento != null;

  // "produtos" field.
  List<String>? _produtos;
  List<String> get produtos => _produtos ?? const [];
  bool hasProdutos() => _produtos != null;

  // "idEquipamento" field.
  DocumentReference? _idEquipamento;
  DocumentReference? get idEquipamento => _idEquipamento;
  bool hasIdEquipamento() => _idEquipamento != null;

  // "numero_serie" field.
  String? _numeroSerie;
  String get numeroSerie => _numeroSerie ?? '';
  bool hasNumeroSerie() => _numeroSerie != null;

  // "marca" field.
  String? _marca;
  String get marca => _marca ?? '';
  bool hasMarca() => _marca != null;

  // "lacre_retirado_painel" field.
  List<String>? _lacreRetiradoPainel;
  List<String> get lacreRetiradoPainel => _lacreRetiradoPainel ?? const [];
  bool hasLacreRetiradoPainel() => _lacreRetiradoPainel != null;

  // "lacre_retirado_corpo" field.
  List<String>? _lacreRetiradoCorpo;
  List<String> get lacreRetiradoCorpo => _lacreRetiradoCorpo ?? const [];
  bool hasLacreRetiradoCorpo() => _lacreRetiradoCorpo != null;

  // "lacre_colocado_corpo" field.
  List<String>? _lacreColocadoCorpo;
  List<String> get lacreColocadoCorpo => _lacreColocadoCorpo ?? const [];
  bool hasLacreColocadoCorpo() => _lacreColocadoCorpo != null;

  // "lacre_colocado_painel" field.
  List<String>? _lacreColocadoPainel;
  List<String> get lacreColocadoPainel => _lacreColocadoPainel ?? const [];
  bool hasLacreColocadoPainel() => _lacreColocadoPainel != null;

  // "encerrante_inicial" field.
  int? _encerranteInicial;
  int get encerranteInicial => _encerranteInicial ?? 0;
  bool hasEncerranteInicial() => _encerranteInicial != null;

  // "encerrante_final" field.
  int? _encerranteFinal;
  int get encerranteFinal => _encerranteFinal ?? 0;
  bool hasEncerranteFinal() => _encerranteFinal != null;

  // "volume_retirado" field.
  int? _volumeRetirado;
  int get volumeRetirado => _volumeRetirado ?? 0;
  bool hasVolumeRetirado() => _volumeRetirado != null;

  // "modelo" field.
  String? _modelo;
  String get modelo => _modelo ?? '';
  bool hasModelo() => _modelo != null;

  // "afericao_inicial_max" field.
  int? _afericaoInicialMax;
  int get afericaoInicialMax => _afericaoInicialMax ?? 0;
  bool hasAfericaoInicialMax() => _afericaoInicialMax != null;

  // "afericao_inicial_min" field.
  int? _afericaoInicialMin;
  int get afericaoInicialMin => _afericaoInicialMin ?? 0;
  bool hasAfericaoInicialMin() => _afericaoInicialMin != null;

  // "afericao_final_max" field.
  int? _afericaoFinalMax;
  int get afericaoFinalMax => _afericaoFinalMax ?? 0;
  bool hasAfericaoFinalMax() => _afericaoFinalMax != null;

  // "afericao_final_min" field.
  int? _afericaoFinalMin;
  int get afericaoFinalMin => _afericaoFinalMin ?? 0;
  bool hasAfericaoFinalMin() => _afericaoFinalMin != null;

  // "descricao_servico" field.
  String? _descricaoServico;
  String get descricaoServico => _descricaoServico ?? '';
  bool hasDescricaoServico() => _descricaoServico != null;

  // "protAprov" field.
  String? _protAprov;
  String get protAprov => _protAprov ?? '';
  bool hasProtAprov() => _protAprov != null;

  // "vazao" field.
  String? _vazao;
  String get vazao => _vazao ?? '';
  bool hasVazao() => _vazao != null;

  // "selosRetirados" field.
  List<String>? _selosRetirados;
  List<String> get selosRetirados => _selosRetirados ?? const [];
  bool hasSelosRetirados() => _selosRetirados != null;

  // "selosColocados" field.
  List<String>? _selosColocados;
  List<String> get selosColocados => _selosColocados ?? const [];
  bool hasSelosColocados() => _selosColocados != null;

  // "servico" field.
  List<String>? _servico;
  List<String> get servico => _servico ?? const [];
  bool hasServico() => _servico != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _numeroInmetro = snapshotData['numero_inmetro'] as String?;
    _equipamento = snapshotData['equipamento'] as String?;
    _produtos = getDataList(snapshotData['produtos']);
    _idEquipamento = snapshotData['idEquipamento'] as DocumentReference?;
    _numeroSerie = snapshotData['numero_serie'] as String?;
    _marca = snapshotData['marca'] as String?;
    _lacreRetiradoPainel = getDataList(snapshotData['lacre_retirado_painel']);
    _lacreRetiradoCorpo = getDataList(snapshotData['lacre_retirado_corpo']);
    _lacreColocadoCorpo = getDataList(snapshotData['lacre_colocado_corpo']);
    _lacreColocadoPainel = getDataList(snapshotData['lacre_colocado_painel']);
    _encerranteInicial = castToType<int>(snapshotData['encerrante_inicial']);
    _encerranteFinal = castToType<int>(snapshotData['encerrante_final']);
    _volumeRetirado = castToType<int>(snapshotData['volume_retirado']);
    _modelo = snapshotData['modelo'] as String?;
    _afericaoInicialMax = castToType<int>(snapshotData['afericao_inicial_max']);
    _afericaoInicialMin = castToType<int>(snapshotData['afericao_inicial_min']);
    _afericaoFinalMax = castToType<int>(snapshotData['afericao_final_max']);
    _afericaoFinalMin = castToType<int>(snapshotData['afericao_final_min']);
    _descricaoServico = snapshotData['descricao_servico'] as String?;
    _protAprov = snapshotData['protAprov'] as String?;
    _vazao = snapshotData['vazao'] as String?;
    _selosRetirados = getDataList(snapshotData['selosRetirados']);
    _selosColocados = getDataList(snapshotData['selosColocados']);
    _servico = getDataList(snapshotData['servico']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('equipamentos_chamados')
          : FirebaseFirestore.instance.collectionGroup('equipamentos_chamados');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('equipamentos_chamados').doc(id);

  static Stream<EquipamentosChamadosRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => EquipamentosChamadosRecord.fromSnapshot(s));

  static Future<EquipamentosChamadosRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => EquipamentosChamadosRecord.fromSnapshot(s));

  static EquipamentosChamadosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EquipamentosChamadosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EquipamentosChamadosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EquipamentosChamadosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EquipamentosChamadosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EquipamentosChamadosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEquipamentosChamadosRecordData({
  String? numeroInmetro,
  String? equipamento,
  DocumentReference? idEquipamento,
  String? numeroSerie,
  String? marca,
  int? encerranteInicial,
  int? encerranteFinal,
  int? volumeRetirado,
  String? modelo,
  int? afericaoInicialMax,
  int? afericaoInicialMin,
  int? afericaoFinalMax,
  int? afericaoFinalMin,
  String? descricaoServico,
  String? protAprov,
  String? vazao,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'numero_inmetro': numeroInmetro,
      'equipamento': equipamento,
      'idEquipamento': idEquipamento,
      'numero_serie': numeroSerie,
      'marca': marca,
      'encerrante_inicial': encerranteInicial,
      'encerrante_final': encerranteFinal,
      'volume_retirado': volumeRetirado,
      'modelo': modelo,
      'afericao_inicial_max': afericaoInicialMax,
      'afericao_inicial_min': afericaoInicialMin,
      'afericao_final_max': afericaoFinalMax,
      'afericao_final_min': afericaoFinalMin,
      'descricao_servico': descricaoServico,
      'protAprov': protAprov,
      'vazao': vazao,
    }.withoutNulls,
  );

  return firestoreData;
}

class EquipamentosChamadosRecordDocumentEquality
    implements Equality<EquipamentosChamadosRecord> {
  const EquipamentosChamadosRecordDocumentEquality();

  @override
  bool equals(EquipamentosChamadosRecord? e1, EquipamentosChamadosRecord? e2) {
    const listEquality = ListEquality();
    return e1?.numeroInmetro == e2?.numeroInmetro &&
        e1?.equipamento == e2?.equipamento &&
        listEquality.equals(e1?.produtos, e2?.produtos) &&
        e1?.idEquipamento == e2?.idEquipamento &&
        e1?.numeroSerie == e2?.numeroSerie &&
        e1?.marca == e2?.marca &&
        listEquality.equals(e1?.lacreRetiradoPainel, e2?.lacreRetiradoPainel) &&
        listEquality.equals(e1?.lacreRetiradoCorpo, e2?.lacreRetiradoCorpo) &&
        listEquality.equals(e1?.lacreColocadoCorpo, e2?.lacreColocadoCorpo) &&
        listEquality.equals(e1?.lacreColocadoPainel, e2?.lacreColocadoPainel) &&
        e1?.encerranteInicial == e2?.encerranteInicial &&
        e1?.encerranteFinal == e2?.encerranteFinal &&
        e1?.volumeRetirado == e2?.volumeRetirado &&
        e1?.modelo == e2?.modelo &&
        e1?.afericaoInicialMax == e2?.afericaoInicialMax &&
        e1?.afericaoInicialMin == e2?.afericaoInicialMin &&
        e1?.afericaoFinalMax == e2?.afericaoFinalMax &&
        e1?.afericaoFinalMin == e2?.afericaoFinalMin &&
        e1?.descricaoServico == e2?.descricaoServico &&
        e1?.protAprov == e2?.protAprov &&
        e1?.vazao == e2?.vazao &&
        listEquality.equals(e1?.selosRetirados, e2?.selosRetirados) &&
        listEquality.equals(e1?.selosColocados, e2?.selosColocados) &&
        listEquality.equals(e1?.servico, e2?.servico);
  }

  @override
  int hash(EquipamentosChamadosRecord? e) => const ListEquality().hash([
        e?.numeroInmetro,
        e?.equipamento,
        e?.produtos,
        e?.idEquipamento,
        e?.numeroSerie,
        e?.marca,
        e?.lacreRetiradoPainel,
        e?.lacreRetiradoCorpo,
        e?.lacreColocadoCorpo,
        e?.lacreColocadoPainel,
        e?.encerranteInicial,
        e?.encerranteFinal,
        e?.volumeRetirado,
        e?.modelo,
        e?.afericaoInicialMax,
        e?.afericaoInicialMin,
        e?.afericaoFinalMax,
        e?.afericaoFinalMin,
        e?.descricaoServico,
        e?.protAprov,
        e?.vazao,
        e?.selosRetirados,
        e?.selosColocados,
        e?.servico
      ]);

  @override
  bool isValidKey(Object? o) => o is EquipamentosChamadosRecord;
}
