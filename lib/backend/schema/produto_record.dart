import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProdutoRecord extends FirestoreRecord {
  ProdutoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "grupo_produto" field.
  String? _grupoProduto;
  String get grupoProduto => _grupoProduto ?? '';
  bool hasGrupoProduto() => _grupoProduto != null;

  // "nome_produto" field.
  String? _nomeProduto;
  String get nomeProduto => _nomeProduto ?? '';
  bool hasNomeProduto() => _nomeProduto != null;

  // "descricao_resumida" field.
  String? _descricaoResumida;
  String get descricaoResumida => _descricaoResumida ?? '';
  bool hasDescricaoResumida() => _descricaoResumida != null;

  // "unidade_venda" field.
  String? _unidadeVenda;
  String get unidadeVenda => _unidadeVenda ?? '';
  bool hasUnidadeVenda() => _unidadeVenda != null;

  // "NCM" field.
  String? _ncm;
  String get ncm => _ncm ?? '';
  bool hasNcm() => _ncm != null;

  // "CEST" field.
  String? _cest;
  String get cest => _cest ?? '';
  bool hasCest() => _cest != null;

  // "preco_compra" field.
  double? _precoCompra;
  double get precoCompra => _precoCompra ?? 0.0;
  bool hasPrecoCompra() => _precoCompra != null;

  // "codProduto" field.
  int? _codProduto;
  int get codProduto => _codProduto ?? 0;
  bool hasCodProduto() => _codProduto != null;

  void _initializeFields() {
    _grupoProduto = snapshotData['grupo_produto'] as String?;
    _nomeProduto = snapshotData['nome_produto'] as String?;
    _descricaoResumida = snapshotData['descricao_resumida'] as String?;
    _unidadeVenda = snapshotData['unidade_venda'] as String?;
    _ncm = snapshotData['NCM'] as String?;
    _cest = snapshotData['CEST'] as String?;
    _precoCompra = castToType<double>(snapshotData['preco_compra']);
    _codProduto = castToType<int>(snapshotData['codProduto']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('produto');

  static Stream<ProdutoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProdutoRecord.fromSnapshot(s));

  static Future<ProdutoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProdutoRecord.fromSnapshot(s));

  static ProdutoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProdutoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProdutoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProdutoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProdutoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProdutoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProdutoRecordData({
  String? grupoProduto,
  String? nomeProduto,
  String? descricaoResumida,
  String? unidadeVenda,
  String? ncm,
  String? cest,
  double? precoCompra,
  int? codProduto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'grupo_produto': grupoProduto,
      'nome_produto': nomeProduto,
      'descricao_resumida': descricaoResumida,
      'unidade_venda': unidadeVenda,
      'NCM': ncm,
      'CEST': cest,
      'preco_compra': precoCompra,
      'codProduto': codProduto,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProdutoRecordDocumentEquality implements Equality<ProdutoRecord> {
  const ProdutoRecordDocumentEquality();

  @override
  bool equals(ProdutoRecord? e1, ProdutoRecord? e2) {
    return e1?.grupoProduto == e2?.grupoProduto &&
        e1?.nomeProduto == e2?.nomeProduto &&
        e1?.descricaoResumida == e2?.descricaoResumida &&
        e1?.unidadeVenda == e2?.unidadeVenda &&
        e1?.ncm == e2?.ncm &&
        e1?.cest == e2?.cest &&
        e1?.precoCompra == e2?.precoCompra &&
        e1?.codProduto == e2?.codProduto;
  }

  @override
  int hash(ProdutoRecord? e) => const ListEquality().hash([
        e?.grupoProduto,
        e?.nomeProduto,
        e?.descricaoResumida,
        e?.unidadeVenda,
        e?.ncm,
        e?.cest,
        e?.precoCompra,
        e?.codProduto
      ]);

  @override
  bool isValidKey(Object? o) => o is ProdutoRecord;
}
