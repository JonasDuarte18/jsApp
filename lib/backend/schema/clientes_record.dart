import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClientesRecord extends FirestoreRecord {
  ClientesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "cnpj" field.
  String? _cnpj;
  String get cnpj => _cnpj ?? '';
  bool hasCnpj() => _cnpj != null;

  // "tipo_inscricao_estadual" field.
  String? _tipoInscricaoEstadual;
  String get tipoInscricaoEstadual => _tipoInscricaoEstadual ?? '';
  bool hasTipoInscricaoEstadual() => _tipoInscricaoEstadual != null;

  // "inscricao_estadual" field.
  String? _inscricaoEstadual;
  String get inscricaoEstadual => _inscricaoEstadual ?? '';
  bool hasInscricaoEstadual() => _inscricaoEstadual != null;

  // "razao_social" field.
  String? _razaoSocial;
  String get razaoSocial => _razaoSocial ?? '';
  bool hasRazaoSocial() => _razaoSocial != null;

  // "nome_fantasia" field.
  String? _nomeFantasia;
  String get nomeFantasia => _nomeFantasia ?? '';
  bool hasNomeFantasia() => _nomeFantasia != null;

  // "tipo_logradouro" field.
  String? _tipoLogradouro;
  String get tipoLogradouro => _tipoLogradouro ?? '';
  bool hasTipoLogradouro() => _tipoLogradouro != null;

  // "numero_END" field.
  String? _numeroEND;
  String get numeroEND => _numeroEND ?? '';
  bool hasNumeroEND() => _numeroEND != null;

  // "bairro" field.
  String? _bairro;
  String get bairro => _bairro ?? '';
  bool hasBairro() => _bairro != null;

  // "uf" field.
  String? _uf;
  String get uf => _uf ?? '';
  bool hasUf() => _uf != null;

  // "municipio" field.
  String? _municipio;
  String get municipio => _municipio ?? '';
  bool hasMunicipio() => _municipio != null;

  // "pais" field.
  String? _pais;
  String get pais => _pais ?? '';
  bool hasPais() => _pais != null;

  // "cod_cliente" field.
  int? _codCliente;
  int get codCliente => _codCliente ?? 0;
  bool hasCodCliente() => _codCliente != null;

  // "concentrador" field.
  String? _concentrador;
  String get concentrador => _concentrador ?? '';
  bool hasConcentrador() => _concentrador != null;

  // "comunicacao_concentrador" field.
  String? _comunicacaoConcentrador;
  String get comunicacaoConcentrador => _comunicacaoConcentrador ?? '';
  bool hasComunicacaoConcentrador() => _comunicacaoConcentrador != null;

  // "medidor_tanque" field.
  String? _medidorTanque;
  String get medidorTanque => _medidorTanque ?? '';
  bool hasMedidorTanque() => _medidorTanque != null;

  // "tipoIE" field.
  String? _tipoIE;
  String get tipoIE => _tipoIE ?? '';
  bool hasTipoIE() => _tipoIE != null;

  // "logradouro" field.
  String? _logradouro;
  String get logradouro => _logradouro ?? '';
  bool hasLogradouro() => _logradouro != null;

  // "cep" field.
  String? _cep;
  String get cep => _cep ?? '';
  bool hasCep() => _cep != null;

  void _initializeFields() {
    _cnpj = snapshotData['cnpj'] as String?;
    _tipoInscricaoEstadual = snapshotData['tipo_inscricao_estadual'] as String?;
    _inscricaoEstadual = snapshotData['inscricao_estadual'] as String?;
    _razaoSocial = snapshotData['razao_social'] as String?;
    _nomeFantasia = snapshotData['nome_fantasia'] as String?;
    _tipoLogradouro = snapshotData['tipo_logradouro'] as String?;
    _numeroEND = snapshotData['numero_END'] as String?;
    _bairro = snapshotData['bairro'] as String?;
    _uf = snapshotData['uf'] as String?;
    _municipio = snapshotData['municipio'] as String?;
    _pais = snapshotData['pais'] as String?;
    _codCliente = castToType<int>(snapshotData['cod_cliente']);
    _concentrador = snapshotData['concentrador'] as String?;
    _comunicacaoConcentrador =
        snapshotData['comunicacao_concentrador'] as String?;
    _medidorTanque = snapshotData['medidor_tanque'] as String?;
    _tipoIE = snapshotData['tipoIE'] as String?;
    _logradouro = snapshotData['logradouro'] as String?;
    _cep = snapshotData['cep'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('clientes');

  static Stream<ClientesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClientesRecord.fromSnapshot(s));

  static Future<ClientesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClientesRecord.fromSnapshot(s));

  static ClientesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClientesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClientesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClientesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClientesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClientesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClientesRecordData({
  String? cnpj,
  String? tipoInscricaoEstadual,
  String? inscricaoEstadual,
  String? razaoSocial,
  String? nomeFantasia,
  String? tipoLogradouro,
  String? numeroEND,
  String? bairro,
  String? uf,
  String? municipio,
  String? pais,
  int? codCliente,
  String? concentrador,
  String? comunicacaoConcentrador,
  String? medidorTanque,
  String? tipoIE,
  String? logradouro,
  String? cep,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'cnpj': cnpj,
      'tipo_inscricao_estadual': tipoInscricaoEstadual,
      'inscricao_estadual': inscricaoEstadual,
      'razao_social': razaoSocial,
      'nome_fantasia': nomeFantasia,
      'tipo_logradouro': tipoLogradouro,
      'numero_END': numeroEND,
      'bairro': bairro,
      'uf': uf,
      'municipio': municipio,
      'pais': pais,
      'cod_cliente': codCliente,
      'concentrador': concentrador,
      'comunicacao_concentrador': comunicacaoConcentrador,
      'medidor_tanque': medidorTanque,
      'tipoIE': tipoIE,
      'logradouro': logradouro,
      'cep': cep,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClientesRecordDocumentEquality implements Equality<ClientesRecord> {
  const ClientesRecordDocumentEquality();

  @override
  bool equals(ClientesRecord? e1, ClientesRecord? e2) {
    return e1?.cnpj == e2?.cnpj &&
        e1?.tipoInscricaoEstadual == e2?.tipoInscricaoEstadual &&
        e1?.inscricaoEstadual == e2?.inscricaoEstadual &&
        e1?.razaoSocial == e2?.razaoSocial &&
        e1?.nomeFantasia == e2?.nomeFantasia &&
        e1?.tipoLogradouro == e2?.tipoLogradouro &&
        e1?.numeroEND == e2?.numeroEND &&
        e1?.bairro == e2?.bairro &&
        e1?.uf == e2?.uf &&
        e1?.municipio == e2?.municipio &&
        e1?.pais == e2?.pais &&
        e1?.codCliente == e2?.codCliente &&
        e1?.concentrador == e2?.concentrador &&
        e1?.comunicacaoConcentrador == e2?.comunicacaoConcentrador &&
        e1?.medidorTanque == e2?.medidorTanque &&
        e1?.tipoIE == e2?.tipoIE &&
        e1?.logradouro == e2?.logradouro &&
        e1?.cep == e2?.cep;
  }

  @override
  int hash(ClientesRecord? e) => const ListEquality().hash([
        e?.cnpj,
        e?.tipoInscricaoEstadual,
        e?.inscricaoEstadual,
        e?.razaoSocial,
        e?.nomeFantasia,
        e?.tipoLogradouro,
        e?.numeroEND,
        e?.bairro,
        e?.uf,
        e?.municipio,
        e?.pais,
        e?.codCliente,
        e?.concentrador,
        e?.comunicacaoConcentrador,
        e?.medidorTanque,
        e?.tipoIE,
        e?.logradouro,
        e?.cep
      ]);

  @override
  bool isValidKey(Object? o) => o is ClientesRecord;
}
