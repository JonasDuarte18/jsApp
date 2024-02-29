import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChamadosRecord extends FirestoreRecord {
  ChamadosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "ref_cliente" field.
  DocumentReference? _refCliente;
  DocumentReference? get refCliente => _refCliente;
  bool hasRefCliente() => _refCliente != null;

  // "cnpj_cliente" field.
  String? _cnpjCliente;
  String get cnpjCliente => _cnpjCliente ?? '';
  bool hasCnpjCliente() => _cnpjCliente != null;

  // "motivo_chamado" field.
  String? _motivoChamado;
  String get motivoChamado => _motivoChamado ?? '';
  bool hasMotivoChamado() => _motivoChamado != null;

  // "data_hora_chamado_criado" field.
  DateTime? _dataHoraChamadoCriado;
  DateTime? get dataHoraChamadoCriado => _dataHoraChamadoCriado;
  bool hasDataHoraChamadoCriado() => _dataHoraChamadoCriado != null;

  // "data_hora_chamado_finalizado" field.
  DateTime? _dataHoraChamadoFinalizado;
  DateTime? get dataHoraChamadoFinalizado => _dataHoraChamadoFinalizado;
  bool hasDataHoraChamadoFinalizado() => _dataHoraChamadoFinalizado != null;

  // "status_chamado" field.
  bool? _statusChamado;
  bool get statusChamado => _statusChamado ?? false;
  bool hasStatusChamado() => _statusChamado != null;

  // "cidade" field.
  String? _cidade;
  String get cidade => _cidade ?? '';
  bool hasCidade() => _cidade != null;

  // "uf" field.
  String? _uf;
  String get uf => _uf ?? '';
  bool hasUf() => _uf != null;

  // "cod_chamado" field.
  int? _codChamado;
  int get codChamado => _codChamado ?? 0;
  bool hasCodChamado() => _codChamado != null;

  // "razaoSocial_cliente" field.
  String? _razaoSocialCliente;
  String get razaoSocialCliente => _razaoSocialCliente ?? '';
  bool hasRazaoSocialCliente() => _razaoSocialCliente != null;

  // "descricao_do_chamado" field.
  String? _descricaoDoChamado;
  String get descricaoDoChamado => _descricaoDoChamado ?? '';
  bool hasDescricaoDoChamado() => _descricaoDoChamado != null;

  // "tecnico_responsavel" field.
  String? _tecnicoResponsavel;
  String get tecnicoResponsavel => _tecnicoResponsavel ?? '';
  bool hasTecnicoResponsavel() => _tecnicoResponsavel != null;

  // "solicitante" field.
  String? _solicitante;
  String get solicitante => _solicitante ?? '';
  bool hasSolicitante() => _solicitante != null;

  // "assinaturaPosto" field.
  String? _assinaturaPosto;
  String get assinaturaPosto => _assinaturaPosto ?? '';
  bool hasAssinaturaPosto() => _assinaturaPosto != null;

  // "endereco" field.
  String? _endereco;
  String get endereco => _endereco ?? '';
  bool hasEndereco() => _endereco != null;

  // "cod_chamado_cia" field.
  int? _codChamadoCia;
  int get codChamadoCia => _codChamadoCia ?? 0;
  bool hasCodChamadoCia() => _codChamadoCia != null;

  // "nomeAssinante" field.
  String? _nomeAssinante;
  String get nomeAssinante => _nomeAssinante ?? '';
  bool hasNomeAssinante() => _nomeAssinante != null;

  // "cpfAssinante" field.
  String? _cpfAssinante;
  String get cpfAssinante => _cpfAssinante ?? '';
  bool hasCpfAssinante() => _cpfAssinante != null;

  // "ordemDeServico" field.
  String? _ordemDeServico;
  String get ordemDeServico => _ordemDeServico ?? '';
  bool hasOrdemDeServico() => _ordemDeServico != null;

  void _initializeFields() {
    _refCliente = snapshotData['ref_cliente'] as DocumentReference?;
    _cnpjCliente = snapshotData['cnpj_cliente'] as String?;
    _motivoChamado = snapshotData['motivo_chamado'] as String?;
    _dataHoraChamadoCriado =
        snapshotData['data_hora_chamado_criado'] as DateTime?;
    _dataHoraChamadoFinalizado =
        snapshotData['data_hora_chamado_finalizado'] as DateTime?;
    _statusChamado = snapshotData['status_chamado'] as bool?;
    _cidade = snapshotData['cidade'] as String?;
    _uf = snapshotData['uf'] as String?;
    _codChamado = castToType<int>(snapshotData['cod_chamado']);
    _razaoSocialCliente = snapshotData['razaoSocial_cliente'] as String?;
    _descricaoDoChamado = snapshotData['descricao_do_chamado'] as String?;
    _tecnicoResponsavel = snapshotData['tecnico_responsavel'] as String?;
    _solicitante = snapshotData['solicitante'] as String?;
    _assinaturaPosto = snapshotData['assinaturaPosto'] as String?;
    _endereco = snapshotData['endereco'] as String?;
    _codChamadoCia = castToType<int>(snapshotData['cod_chamado_cia']);
    _nomeAssinante = snapshotData['nomeAssinante'] as String?;
    _cpfAssinante = snapshotData['cpfAssinante'] as String?;
    _ordemDeServico = snapshotData['ordemDeServico'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chamados');

  static Stream<ChamadosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChamadosRecord.fromSnapshot(s));

  static Future<ChamadosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChamadosRecord.fromSnapshot(s));

  static ChamadosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChamadosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChamadosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChamadosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChamadosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChamadosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChamadosRecordData({
  DocumentReference? refCliente,
  String? cnpjCliente,
  String? motivoChamado,
  DateTime? dataHoraChamadoCriado,
  DateTime? dataHoraChamadoFinalizado,
  bool? statusChamado,
  String? cidade,
  String? uf,
  int? codChamado,
  String? razaoSocialCliente,
  String? descricaoDoChamado,
  String? tecnicoResponsavel,
  String? solicitante,
  String? assinaturaPosto,
  String? endereco,
  int? codChamadoCia,
  String? nomeAssinante,
  String? cpfAssinante,
  String? ordemDeServico,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ref_cliente': refCliente,
      'cnpj_cliente': cnpjCliente,
      'motivo_chamado': motivoChamado,
      'data_hora_chamado_criado': dataHoraChamadoCriado,
      'data_hora_chamado_finalizado': dataHoraChamadoFinalizado,
      'status_chamado': statusChamado,
      'cidade': cidade,
      'uf': uf,
      'cod_chamado': codChamado,
      'razaoSocial_cliente': razaoSocialCliente,
      'descricao_do_chamado': descricaoDoChamado,
      'tecnico_responsavel': tecnicoResponsavel,
      'solicitante': solicitante,
      'assinaturaPosto': assinaturaPosto,
      'endereco': endereco,
      'cod_chamado_cia': codChamadoCia,
      'nomeAssinante': nomeAssinante,
      'cpfAssinante': cpfAssinante,
      'ordemDeServico': ordemDeServico,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChamadosRecordDocumentEquality implements Equality<ChamadosRecord> {
  const ChamadosRecordDocumentEquality();

  @override
  bool equals(ChamadosRecord? e1, ChamadosRecord? e2) {
    return e1?.refCliente == e2?.refCliente &&
        e1?.cnpjCliente == e2?.cnpjCliente &&
        e1?.motivoChamado == e2?.motivoChamado &&
        e1?.dataHoraChamadoCriado == e2?.dataHoraChamadoCriado &&
        e1?.dataHoraChamadoFinalizado == e2?.dataHoraChamadoFinalizado &&
        e1?.statusChamado == e2?.statusChamado &&
        e1?.cidade == e2?.cidade &&
        e1?.uf == e2?.uf &&
        e1?.codChamado == e2?.codChamado &&
        e1?.razaoSocialCliente == e2?.razaoSocialCliente &&
        e1?.descricaoDoChamado == e2?.descricaoDoChamado &&
        e1?.tecnicoResponsavel == e2?.tecnicoResponsavel &&
        e1?.solicitante == e2?.solicitante &&
        e1?.assinaturaPosto == e2?.assinaturaPosto &&
        e1?.endereco == e2?.endereco &&
        e1?.codChamadoCia == e2?.codChamadoCia &&
        e1?.nomeAssinante == e2?.nomeAssinante &&
        e1?.cpfAssinante == e2?.cpfAssinante &&
        e1?.ordemDeServico == e2?.ordemDeServico;
  }

  @override
  int hash(ChamadosRecord? e) => const ListEquality().hash([
        e?.refCliente,
        e?.cnpjCliente,
        e?.motivoChamado,
        e?.dataHoraChamadoCriado,
        e?.dataHoraChamadoFinalizado,
        e?.statusChamado,
        e?.cidade,
        e?.uf,
        e?.codChamado,
        e?.razaoSocialCliente,
        e?.descricaoDoChamado,
        e?.tecnicoResponsavel,
        e?.solicitante,
        e?.assinaturaPosto,
        e?.endereco,
        e?.codChamadoCia,
        e?.nomeAssinante,
        e?.cpfAssinante,
        e?.ordemDeServico
      ]);

  @override
  bool isValidKey(Object? o) => o is ChamadosRecord;
}
