import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ServicosRecord extends FirestoreRecord {
  ServicosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "descricao_servico" field.
  String? _descricaoServico;
  String get descricaoServico => _descricaoServico ?? '';
  bool hasDescricaoServico() => _descricaoServico != null;

  // "nome_servico" field.
  String? _nomeServico;
  String get nomeServico => _nomeServico ?? '';
  bool hasNomeServico() => _nomeServico != null;

  // "preco_servico" field.
  double? _precoServico;
  double get precoServico => _precoServico ?? 0.0;
  bool hasPrecoServico() => _precoServico != null;

  // "cod_servico" field.
  int? _codServico;
  int get codServico => _codServico ?? 0;
  bool hasCodServico() => _codServico != null;

  // "grupoServico" field.
  String? _grupoServico;
  String get grupoServico => _grupoServico ?? '';
  bool hasGrupoServico() => _grupoServico != null;

  void _initializeFields() {
    _descricaoServico = snapshotData['descricao_servico'] as String?;
    _nomeServico = snapshotData['nome_servico'] as String?;
    _precoServico = castToType<double>(snapshotData['preco_servico']);
    _codServico = castToType<int>(snapshotData['cod_servico']);
    _grupoServico = snapshotData['grupoServico'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('servicos');

  static Stream<ServicosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ServicosRecord.fromSnapshot(s));

  static Future<ServicosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ServicosRecord.fromSnapshot(s));

  static ServicosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ServicosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ServicosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ServicosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ServicosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ServicosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createServicosRecordData({
  String? descricaoServico,
  String? nomeServico,
  double? precoServico,
  int? codServico,
  String? grupoServico,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'descricao_servico': descricaoServico,
      'nome_servico': nomeServico,
      'preco_servico': precoServico,
      'cod_servico': codServico,
      'grupoServico': grupoServico,
    }.withoutNulls,
  );

  return firestoreData;
}

class ServicosRecordDocumentEquality implements Equality<ServicosRecord> {
  const ServicosRecordDocumentEquality();

  @override
  bool equals(ServicosRecord? e1, ServicosRecord? e2) {
    return e1?.descricaoServico == e2?.descricaoServico &&
        e1?.nomeServico == e2?.nomeServico &&
        e1?.precoServico == e2?.precoServico &&
        e1?.codServico == e2?.codServico &&
        e1?.grupoServico == e2?.grupoServico;
  }

  @override
  int hash(ServicosRecord? e) => const ListEquality().hash([
        e?.descricaoServico,
        e?.nomeServico,
        e?.precoServico,
        e?.codServico,
        e?.grupoServico
      ]);

  @override
  bool isValidKey(Object? o) => o is ServicosRecord;
}
