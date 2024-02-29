import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class EmpresaRecord extends FirestoreRecord {
  EmpresaRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "cnpj_empresa" field.
  String? _cnpjEmpresa;
  String get cnpjEmpresa => _cnpjEmpresa ?? '';
  bool hasCnpjEmpresa() => _cnpjEmpresa != null;

  void _initializeFields() {
    _cnpjEmpresa = snapshotData['cnpj_empresa'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('empresa');

  static Stream<EmpresaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EmpresaRecord.fromSnapshot(s));

  static Future<EmpresaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EmpresaRecord.fromSnapshot(s));

  static EmpresaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EmpresaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EmpresaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EmpresaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EmpresaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EmpresaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEmpresaRecordData({
  String? cnpjEmpresa,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'cnpj_empresa': cnpjEmpresa,
    }.withoutNulls,
  );

  return firestoreData;
}

class EmpresaRecordDocumentEquality implements Equality<EmpresaRecord> {
  const EmpresaRecordDocumentEquality();

  @override
  bool equals(EmpresaRecord? e1, EmpresaRecord? e2) {
    return e1?.cnpjEmpresa == e2?.cnpjEmpresa;
  }

  @override
  int hash(EmpresaRecord? e) => const ListEquality().hash([e?.cnpjEmpresa]);

  @override
  bool isValidKey(Object? o) => o is EmpresaRecord;
}
