import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EquipamentosRecord extends FirestoreRecord {
  EquipamentosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "numero" field.
  int? _numero;
  int get numero => _numero ?? 0;
  bool hasNumero() => _numero != null;

  // "modelo" field.
  String? _modelo;
  String get modelo => _modelo ?? '';
  bool hasModelo() => _modelo != null;

  // "numero_de_serie" field.
  String? _numeroDeSerie;
  String get numeroDeSerie => _numeroDeSerie ?? '';
  bool hasNumeroDeSerie() => _numeroDeSerie != null;

  // "numero_de_bicos" field.
  int? _numeroDeBicos;
  int get numeroDeBicos => _numeroDeBicos ?? 0;
  bool hasNumeroDeBicos() => _numeroDeBicos != null;

  // "selo" field.
  String? _selo;
  String get selo => _selo ?? '';
  bool hasSelo() => _selo != null;

  // "lacre" field.
  String? _lacre;
  String get lacre => _lacre ?? '';
  bool hasLacre() => _lacre != null;

  // "portaria_aprovacao" field.
  String? _portariaAprovacao;
  String get portariaAprovacao => _portariaAprovacao ?? '';
  bool hasPortariaAprovacao() => _portariaAprovacao != null;

  // "combustivel" field.
  String? _combustivel;
  String get combustivel => _combustivel ?? '';
  bool hasCombustivel() => _combustivel != null;

  // "numero_serie_medidor" field.
  String? _numeroSerieMedidor;
  String get numeroSerieMedidor => _numeroSerieMedidor ?? '';
  bool hasNumeroSerieMedidor() => _numeroSerieMedidor != null;

  // "capacidade" field.
  String? _capacidade;
  String get capacidade => _capacidade ?? '';
  bool hasCapacidade() => _capacidade != null;

  // "cod_concentrador" field.
  String? _codConcentrador;
  String get codConcentrador => _codConcentrador ?? '';
  bool hasCodConcentrador() => _codConcentrador != null;

  // "bomba" field.
  String? _bomba;
  String get bomba => _bomba ?? '';
  bool hasBomba() => _bomba != null;

  // "bomba_referencia" field.
  DocumentReference? _bombaReferencia;
  DocumentReference? get bombaReferencia => _bombaReferencia;
  bool hasBombaReferencia() => _bombaReferencia != null;

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  bool hasTipo() => _tipo != null;

  // "numero_inmetro" field.
  String? _numeroInmetro;
  String get numeroInmetro => _numeroInmetro ?? '';
  bool hasNumeroInmetro() => _numeroInmetro != null;

  // "fabricante" field.
  String? _fabricante;
  String get fabricante => _fabricante ?? '';
  bool hasFabricante() => _fabricante != null;

  // "dataFabricacao" field.
  String? _dataFabricacao;
  String get dataFabricacao => _dataFabricacao ?? '';
  bool hasDataFabricacao() => _dataFabricacao != null;

  // "normaFabricacao" field.
  String? _normaFabricacao;
  String get normaFabricacao => _normaFabricacao ?? '';
  bool hasNormaFabricacao() => _normaFabricacao != null;

  // "diametro" field.
  String? _diametro;
  String get diametro => _diametro ?? '';
  bool hasDiametro() => _diametro != null;

  // "compartimentado" field.
  String? _compartimentado;
  String get compartimentado => _compartimentado ?? '';
  bool hasCompartimentado() => _compartimentado != null;

  // "parede" field.
  String? _parede;
  String get parede => _parede ?? '';
  bool hasParede() => _parede != null;

  // "descarga" field.
  String? _descarga;
  String get descarga => _descarga ?? '';
  bool hasDescarga() => _descarga != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _descricao = snapshotData['descricao'] as String?;
    _numero = castToType<int>(snapshotData['numero']);
    _modelo = snapshotData['modelo'] as String?;
    _numeroDeSerie = snapshotData['numero_de_serie'] as String?;
    _numeroDeBicos = castToType<int>(snapshotData['numero_de_bicos']);
    _selo = snapshotData['selo'] as String?;
    _lacre = snapshotData['lacre'] as String?;
    _portariaAprovacao = snapshotData['portaria_aprovacao'] as String?;
    _combustivel = snapshotData['combustivel'] as String?;
    _numeroSerieMedidor = snapshotData['numero_serie_medidor'] as String?;
    _capacidade = snapshotData['capacidade'] as String?;
    _codConcentrador = snapshotData['cod_concentrador'] as String?;
    _bomba = snapshotData['bomba'] as String?;
    _bombaReferencia = snapshotData['bomba_referencia'] as DocumentReference?;
    _tipo = snapshotData['tipo'] as String?;
    _numeroInmetro = snapshotData['numero_inmetro'] as String?;
    _fabricante = snapshotData['fabricante'] as String?;
    _dataFabricacao = snapshotData['dataFabricacao'] as String?;
    _normaFabricacao = snapshotData['normaFabricacao'] as String?;
    _diametro = snapshotData['diametro'] as String?;
    _compartimentado = snapshotData['compartimentado'] as String?;
    _parede = snapshotData['parede'] as String?;
    _descarga = snapshotData['descarga'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('equipamentos')
          : FirebaseFirestore.instance.collectionGroup('equipamentos');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('equipamentos').doc(id);

  static Stream<EquipamentosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EquipamentosRecord.fromSnapshot(s));

  static Future<EquipamentosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EquipamentosRecord.fromSnapshot(s));

  static EquipamentosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EquipamentosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EquipamentosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EquipamentosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EquipamentosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EquipamentosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEquipamentosRecordData({
  String? descricao,
  int? numero,
  String? modelo,
  String? numeroDeSerie,
  int? numeroDeBicos,
  String? selo,
  String? lacre,
  String? portariaAprovacao,
  String? combustivel,
  String? numeroSerieMedidor,
  String? capacidade,
  String? codConcentrador,
  String? bomba,
  DocumentReference? bombaReferencia,
  String? tipo,
  String? numeroInmetro,
  String? fabricante,
  String? dataFabricacao,
  String? normaFabricacao,
  String? diametro,
  String? compartimentado,
  String? parede,
  String? descarga,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'descricao': descricao,
      'numero': numero,
      'modelo': modelo,
      'numero_de_serie': numeroDeSerie,
      'numero_de_bicos': numeroDeBicos,
      'selo': selo,
      'lacre': lacre,
      'portaria_aprovacao': portariaAprovacao,
      'combustivel': combustivel,
      'numero_serie_medidor': numeroSerieMedidor,
      'capacidade': capacidade,
      'cod_concentrador': codConcentrador,
      'bomba': bomba,
      'bomba_referencia': bombaReferencia,
      'tipo': tipo,
      'numero_inmetro': numeroInmetro,
      'fabricante': fabricante,
      'dataFabricacao': dataFabricacao,
      'normaFabricacao': normaFabricacao,
      'diametro': diametro,
      'compartimentado': compartimentado,
      'parede': parede,
      'descarga': descarga,
    }.withoutNulls,
  );

  return firestoreData;
}

class EquipamentosRecordDocumentEquality
    implements Equality<EquipamentosRecord> {
  const EquipamentosRecordDocumentEquality();

  @override
  bool equals(EquipamentosRecord? e1, EquipamentosRecord? e2) {
    return e1?.descricao == e2?.descricao &&
        e1?.numero == e2?.numero &&
        e1?.modelo == e2?.modelo &&
        e1?.numeroDeSerie == e2?.numeroDeSerie &&
        e1?.numeroDeBicos == e2?.numeroDeBicos &&
        e1?.selo == e2?.selo &&
        e1?.lacre == e2?.lacre &&
        e1?.portariaAprovacao == e2?.portariaAprovacao &&
        e1?.combustivel == e2?.combustivel &&
        e1?.numeroSerieMedidor == e2?.numeroSerieMedidor &&
        e1?.capacidade == e2?.capacidade &&
        e1?.codConcentrador == e2?.codConcentrador &&
        e1?.bomba == e2?.bomba &&
        e1?.bombaReferencia == e2?.bombaReferencia &&
        e1?.tipo == e2?.tipo &&
        e1?.numeroInmetro == e2?.numeroInmetro &&
        e1?.fabricante == e2?.fabricante &&
        e1?.dataFabricacao == e2?.dataFabricacao &&
        e1?.normaFabricacao == e2?.normaFabricacao &&
        e1?.diametro == e2?.diametro &&
        e1?.compartimentado == e2?.compartimentado &&
        e1?.parede == e2?.parede &&
        e1?.descarga == e2?.descarga;
  }

  @override
  int hash(EquipamentosRecord? e) => const ListEquality().hash([
        e?.descricao,
        e?.numero,
        e?.modelo,
        e?.numeroDeSerie,
        e?.numeroDeBicos,
        e?.selo,
        e?.lacre,
        e?.portariaAprovacao,
        e?.combustivel,
        e?.numeroSerieMedidor,
        e?.capacidade,
        e?.codConcentrador,
        e?.bomba,
        e?.bombaReferencia,
        e?.tipo,
        e?.numeroInmetro,
        e?.fabricante,
        e?.dataFabricacao,
        e?.normaFabricacao,
        e?.diametro,
        e?.compartimentado,
        e?.parede,
        e?.descarga
      ]);

  @override
  bool isValidKey(Object? o) => o is EquipamentosRecord;
}
