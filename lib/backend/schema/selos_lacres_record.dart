import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class SelosLacresRecord extends FirestoreRecord {
  SelosLacresRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "data_aplicacao" field.
  DateTime? _dataAplicacao;
  DateTime? get dataAplicacao => _dataAplicacao;
  bool hasDataAplicacao() => _dataAplicacao != null;

  // "ref_chamado" field.
  DocumentReference? _refChamado;
  DocumentReference? get refChamado => _refChamado;
  bool hasRefChamado() => _refChamado != null;

  // "cod" field.
  String? _cod;
  String get cod => _cod ?? '';
  bool hasCod() => _cod != null;

  // "numeroChamado" field.
  String? _numeroChamado;
  String get numeroChamado => _numeroChamado ?? '';
  bool hasNumeroChamado() => _numeroChamado != null;

  // "data_cadastro" field.
  DateTime? _dataCadastro;
  DateTime? get dataCadastro => _dataCadastro;
  bool hasDataCadastro() => _dataCadastro != null;

  // "tecResponsavel" field.
  String? _tecResponsavel;
  String get tecResponsavel => _tecResponsavel ?? '';
  bool hasTecResponsavel() => _tecResponsavel != null;

  // "refTecResponsavel" field.
  DocumentReference? _refTecResponsavel;
  DocumentReference? get refTecResponsavel => _refTecResponsavel;
  bool hasRefTecResponsavel() => _refTecResponsavel != null;

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  bool hasTipo() => _tipo != null;

  void _initializeFields() {
    _dataAplicacao = snapshotData['data_aplicacao'] as DateTime?;
    _refChamado = snapshotData['ref_chamado'] as DocumentReference?;
    _cod = snapshotData['cod'] as String?;
    _numeroChamado = snapshotData['numeroChamado'] as String?;
    _dataCadastro = snapshotData['data_cadastro'] as DateTime?;
    _tecResponsavel = snapshotData['tecResponsavel'] as String?;
    _refTecResponsavel =
        snapshotData['refTecResponsavel'] as DocumentReference?;
    _tipo = snapshotData['tipo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('SelosLacres');

  static Stream<SelosLacresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SelosLacresRecord.fromSnapshot(s));

  static Future<SelosLacresRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SelosLacresRecord.fromSnapshot(s));

  static SelosLacresRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SelosLacresRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SelosLacresRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SelosLacresRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SelosLacresRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SelosLacresRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSelosLacresRecordData({
  DateTime? dataAplicacao,
  DocumentReference? refChamado,
  String? cod,
  String? numeroChamado,
  DateTime? dataCadastro,
  String? tecResponsavel,
  DocumentReference? refTecResponsavel,
  String? tipo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'data_aplicacao': dataAplicacao,
      'ref_chamado': refChamado,
      'cod': cod,
      'numeroChamado': numeroChamado,
      'data_cadastro': dataCadastro,
      'tecResponsavel': tecResponsavel,
      'refTecResponsavel': refTecResponsavel,
      'tipo': tipo,
    }.withoutNulls,
  );

  return firestoreData;
}

class SelosLacresRecordDocumentEquality implements Equality<SelosLacresRecord> {
  const SelosLacresRecordDocumentEquality();

  @override
  bool equals(SelosLacresRecord? e1, SelosLacresRecord? e2) {
    return e1?.dataAplicacao == e2?.dataAplicacao &&
        e1?.refChamado == e2?.refChamado &&
        e1?.cod == e2?.cod &&
        e1?.numeroChamado == e2?.numeroChamado &&
        e1?.dataCadastro == e2?.dataCadastro &&
        e1?.tecResponsavel == e2?.tecResponsavel &&
        e1?.refTecResponsavel == e2?.refTecResponsavel &&
        e1?.tipo == e2?.tipo;
  }

  @override
  int hash(SelosLacresRecord? e) => const ListEquality().hash([
        e?.dataAplicacao,
        e?.refChamado,
        e?.cod,
        e?.numeroChamado,
        e?.dataCadastro,
        e?.tecResponsavel,
        e?.refTecResponsavel,
        e?.tipo
      ]);

  @override
  bool isValidKey(Object? o) => o is SelosLacresRecord;
}
