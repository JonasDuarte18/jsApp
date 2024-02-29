// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EquipamentosOsStruct extends FFFirebaseStruct {
  EquipamentosOsStruct({
    String? equipamento,
    String? nSerie,
    String? marca,
    String? modelo,
    String? portAprov,
    String? nInmetro,
    String? afeIniMax,
    String? afeIniMin,
    String? afeFinMax,
    String? afeFinMin,
    String? vazao,
    String? encerranteIni,
    String? encerranteFin,
    String? volRetirado,
    DocumentReference? idDocumento,
    List<String>? lacresRetPainel,
    List<String>? lacresColPainel,
    List<String>? lacresRetCorpo,
    List<String>? lacresColCorpo,
    List<String>? selosRet,
    List<String>? selosCol,
    List<String>? servico,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _equipamento = equipamento,
        _nSerie = nSerie,
        _marca = marca,
        _modelo = modelo,
        _portAprov = portAprov,
        _nInmetro = nInmetro,
        _afeIniMax = afeIniMax,
        _afeIniMin = afeIniMin,
        _afeFinMax = afeFinMax,
        _afeFinMin = afeFinMin,
        _vazao = vazao,
        _encerranteIni = encerranteIni,
        _encerranteFin = encerranteFin,
        _volRetirado = volRetirado,
        _idDocumento = idDocumento,
        _lacresRetPainel = lacresRetPainel,
        _lacresColPainel = lacresColPainel,
        _lacresRetCorpo = lacresRetCorpo,
        _lacresColCorpo = lacresColCorpo,
        _selosRet = selosRet,
        _selosCol = selosCol,
        _servico = servico,
        super(firestoreUtilData);

  // "equipamento" field.
  String? _equipamento;
  String get equipamento => _equipamento ?? '';
  set equipamento(String? val) => _equipamento = val;
  bool hasEquipamento() => _equipamento != null;

  // "nSerie" field.
  String? _nSerie;
  String get nSerie => _nSerie ?? '';
  set nSerie(String? val) => _nSerie = val;
  bool hasNSerie() => _nSerie != null;

  // "marca" field.
  String? _marca;
  String get marca => _marca ?? '';
  set marca(String? val) => _marca = val;
  bool hasMarca() => _marca != null;

  // "modelo" field.
  String? _modelo;
  String get modelo => _modelo ?? '';
  set modelo(String? val) => _modelo = val;
  bool hasModelo() => _modelo != null;

  // "portAprov" field.
  String? _portAprov;
  String get portAprov => _portAprov ?? '';
  set portAprov(String? val) => _portAprov = val;
  bool hasPortAprov() => _portAprov != null;

  // "nInmetro" field.
  String? _nInmetro;
  String get nInmetro => _nInmetro ?? '';
  set nInmetro(String? val) => _nInmetro = val;
  bool hasNInmetro() => _nInmetro != null;

  // "afeIniMax" field.
  String? _afeIniMax;
  String get afeIniMax => _afeIniMax ?? '';
  set afeIniMax(String? val) => _afeIniMax = val;
  bool hasAfeIniMax() => _afeIniMax != null;

  // "afeIniMin" field.
  String? _afeIniMin;
  String get afeIniMin => _afeIniMin ?? '';
  set afeIniMin(String? val) => _afeIniMin = val;
  bool hasAfeIniMin() => _afeIniMin != null;

  // "afeFinMax" field.
  String? _afeFinMax;
  String get afeFinMax => _afeFinMax ?? '';
  set afeFinMax(String? val) => _afeFinMax = val;
  bool hasAfeFinMax() => _afeFinMax != null;

  // "afeFinMin" field.
  String? _afeFinMin;
  String get afeFinMin => _afeFinMin ?? '';
  set afeFinMin(String? val) => _afeFinMin = val;
  bool hasAfeFinMin() => _afeFinMin != null;

  // "vazao" field.
  String? _vazao;
  String get vazao => _vazao ?? '';
  set vazao(String? val) => _vazao = val;
  bool hasVazao() => _vazao != null;

  // "encerranteIni" field.
  String? _encerranteIni;
  String get encerranteIni => _encerranteIni ?? '';
  set encerranteIni(String? val) => _encerranteIni = val;
  bool hasEncerranteIni() => _encerranteIni != null;

  // "encerranteFin" field.
  String? _encerranteFin;
  String get encerranteFin => _encerranteFin ?? '';
  set encerranteFin(String? val) => _encerranteFin = val;
  bool hasEncerranteFin() => _encerranteFin != null;

  // "volRetirado" field.
  String? _volRetirado;
  String get volRetirado => _volRetirado ?? '';
  set volRetirado(String? val) => _volRetirado = val;
  bool hasVolRetirado() => _volRetirado != null;

  // "idDocumento" field.
  DocumentReference? _idDocumento;
  DocumentReference? get idDocumento => _idDocumento;
  set idDocumento(DocumentReference? val) => _idDocumento = val;
  bool hasIdDocumento() => _idDocumento != null;

  // "lacresRetPainel" field.
  List<String>? _lacresRetPainel;
  List<String> get lacresRetPainel => _lacresRetPainel ?? const [];
  set lacresRetPainel(List<String>? val) => _lacresRetPainel = val;
  void updateLacresRetPainel(Function(List<String>) updateFn) =>
      updateFn(_lacresRetPainel ??= []);
  bool hasLacresRetPainel() => _lacresRetPainel != null;

  // "lacresColPainel" field.
  List<String>? _lacresColPainel;
  List<String> get lacresColPainel => _lacresColPainel ?? const [];
  set lacresColPainel(List<String>? val) => _lacresColPainel = val;
  void updateLacresColPainel(Function(List<String>) updateFn) =>
      updateFn(_lacresColPainel ??= []);
  bool hasLacresColPainel() => _lacresColPainel != null;

  // "lacresRetCorpo" field.
  List<String>? _lacresRetCorpo;
  List<String> get lacresRetCorpo => _lacresRetCorpo ?? const [];
  set lacresRetCorpo(List<String>? val) => _lacresRetCorpo = val;
  void updateLacresRetCorpo(Function(List<String>) updateFn) =>
      updateFn(_lacresRetCorpo ??= []);
  bool hasLacresRetCorpo() => _lacresRetCorpo != null;

  // "lacresColCorpo" field.
  List<String>? _lacresColCorpo;
  List<String> get lacresColCorpo => _lacresColCorpo ?? const [];
  set lacresColCorpo(List<String>? val) => _lacresColCorpo = val;
  void updateLacresColCorpo(Function(List<String>) updateFn) =>
      updateFn(_lacresColCorpo ??= []);
  bool hasLacresColCorpo() => _lacresColCorpo != null;

  // "selosRet" field.
  List<String>? _selosRet;
  List<String> get selosRet => _selosRet ?? const [];
  set selosRet(List<String>? val) => _selosRet = val;
  void updateSelosRet(Function(List<String>) updateFn) =>
      updateFn(_selosRet ??= []);
  bool hasSelosRet() => _selosRet != null;

  // "selosCol" field.
  List<String>? _selosCol;
  List<String> get selosCol => _selosCol ?? const [];
  set selosCol(List<String>? val) => _selosCol = val;
  void updateSelosCol(Function(List<String>) updateFn) =>
      updateFn(_selosCol ??= []);
  bool hasSelosCol() => _selosCol != null;

  // "servico" field.
  List<String>? _servico;
  List<String> get servico => _servico ?? const [];
  set servico(List<String>? val) => _servico = val;
  void updateServico(Function(List<String>) updateFn) =>
      updateFn(_servico ??= []);
  bool hasServico() => _servico != null;

  static EquipamentosOsStruct fromMap(Map<String, dynamic> data) =>
      EquipamentosOsStruct(
        equipamento: data['equipamento'] as String?,
        nSerie: data['nSerie'] as String?,
        marca: data['marca'] as String?,
        modelo: data['modelo'] as String?,
        portAprov: data['portAprov'] as String?,
        nInmetro: data['nInmetro'] as String?,
        afeIniMax: data['afeIniMax'] as String?,
        afeIniMin: data['afeIniMin'] as String?,
        afeFinMax: data['afeFinMax'] as String?,
        afeFinMin: data['afeFinMin'] as String?,
        vazao: data['vazao'] as String?,
        encerranteIni: data['encerranteIni'] as String?,
        encerranteFin: data['encerranteFin'] as String?,
        volRetirado: data['volRetirado'] as String?,
        idDocumento: data['idDocumento'] as DocumentReference?,
        lacresRetPainel: getDataList(data['lacresRetPainel']),
        lacresColPainel: getDataList(data['lacresColPainel']),
        lacresRetCorpo: getDataList(data['lacresRetCorpo']),
        lacresColCorpo: getDataList(data['lacresColCorpo']),
        selosRet: getDataList(data['selosRet']),
        selosCol: getDataList(data['selosCol']),
        servico: getDataList(data['servico']),
      );

  static EquipamentosOsStruct? maybeFromMap(dynamic data) => data is Map
      ? EquipamentosOsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'equipamento': _equipamento,
        'nSerie': _nSerie,
        'marca': _marca,
        'modelo': _modelo,
        'portAprov': _portAprov,
        'nInmetro': _nInmetro,
        'afeIniMax': _afeIniMax,
        'afeIniMin': _afeIniMin,
        'afeFinMax': _afeFinMax,
        'afeFinMin': _afeFinMin,
        'vazao': _vazao,
        'encerranteIni': _encerranteIni,
        'encerranteFin': _encerranteFin,
        'volRetirado': _volRetirado,
        'idDocumento': _idDocumento,
        'lacresRetPainel': _lacresRetPainel,
        'lacresColPainel': _lacresColPainel,
        'lacresRetCorpo': _lacresRetCorpo,
        'lacresColCorpo': _lacresColCorpo,
        'selosRet': _selosRet,
        'selosCol': _selosCol,
        'servico': _servico,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'equipamento': serializeParam(
          _equipamento,
          ParamType.String,
        ),
        'nSerie': serializeParam(
          _nSerie,
          ParamType.String,
        ),
        'marca': serializeParam(
          _marca,
          ParamType.String,
        ),
        'modelo': serializeParam(
          _modelo,
          ParamType.String,
        ),
        'portAprov': serializeParam(
          _portAprov,
          ParamType.String,
        ),
        'nInmetro': serializeParam(
          _nInmetro,
          ParamType.String,
        ),
        'afeIniMax': serializeParam(
          _afeIniMax,
          ParamType.String,
        ),
        'afeIniMin': serializeParam(
          _afeIniMin,
          ParamType.String,
        ),
        'afeFinMax': serializeParam(
          _afeFinMax,
          ParamType.String,
        ),
        'afeFinMin': serializeParam(
          _afeFinMin,
          ParamType.String,
        ),
        'vazao': serializeParam(
          _vazao,
          ParamType.String,
        ),
        'encerranteIni': serializeParam(
          _encerranteIni,
          ParamType.String,
        ),
        'encerranteFin': serializeParam(
          _encerranteFin,
          ParamType.String,
        ),
        'volRetirado': serializeParam(
          _volRetirado,
          ParamType.String,
        ),
        'idDocumento': serializeParam(
          _idDocumento,
          ParamType.DocumentReference,
        ),
        'lacresRetPainel': serializeParam(
          _lacresRetPainel,
          ParamType.String,
          true,
        ),
        'lacresColPainel': serializeParam(
          _lacresColPainel,
          ParamType.String,
          true,
        ),
        'lacresRetCorpo': serializeParam(
          _lacresRetCorpo,
          ParamType.String,
          true,
        ),
        'lacresColCorpo': serializeParam(
          _lacresColCorpo,
          ParamType.String,
          true,
        ),
        'selosRet': serializeParam(
          _selosRet,
          ParamType.String,
          true,
        ),
        'selosCol': serializeParam(
          _selosCol,
          ParamType.String,
          true,
        ),
        'servico': serializeParam(
          _servico,
          ParamType.String,
          true,
        ),
      }.withoutNulls;

  static EquipamentosOsStruct fromSerializableMap(Map<String, dynamic> data) =>
      EquipamentosOsStruct(
        equipamento: deserializeParam(
          data['equipamento'],
          ParamType.String,
          false,
        ),
        nSerie: deserializeParam(
          data['nSerie'],
          ParamType.String,
          false,
        ),
        marca: deserializeParam(
          data['marca'],
          ParamType.String,
          false,
        ),
        modelo: deserializeParam(
          data['modelo'],
          ParamType.String,
          false,
        ),
        portAprov: deserializeParam(
          data['portAprov'],
          ParamType.String,
          false,
        ),
        nInmetro: deserializeParam(
          data['nInmetro'],
          ParamType.String,
          false,
        ),
        afeIniMax: deserializeParam(
          data['afeIniMax'],
          ParamType.String,
          false,
        ),
        afeIniMin: deserializeParam(
          data['afeIniMin'],
          ParamType.String,
          false,
        ),
        afeFinMax: deserializeParam(
          data['afeFinMax'],
          ParamType.String,
          false,
        ),
        afeFinMin: deserializeParam(
          data['afeFinMin'],
          ParamType.String,
          false,
        ),
        vazao: deserializeParam(
          data['vazao'],
          ParamType.String,
          false,
        ),
        encerranteIni: deserializeParam(
          data['encerranteIni'],
          ParamType.String,
          false,
        ),
        encerranteFin: deserializeParam(
          data['encerranteFin'],
          ParamType.String,
          false,
        ),
        volRetirado: deserializeParam(
          data['volRetirado'],
          ParamType.String,
          false,
        ),
        idDocumento: deserializeParam(
          data['idDocumento'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['chamados', 'equipamentos_chamados'],
        ),
        lacresRetPainel: deserializeParam<String>(
          data['lacresRetPainel'],
          ParamType.String,
          true,
        ),
        lacresColPainel: deserializeParam<String>(
          data['lacresColPainel'],
          ParamType.String,
          true,
        ),
        lacresRetCorpo: deserializeParam<String>(
          data['lacresRetCorpo'],
          ParamType.String,
          true,
        ),
        lacresColCorpo: deserializeParam<String>(
          data['lacresColCorpo'],
          ParamType.String,
          true,
        ),
        selosRet: deserializeParam<String>(
          data['selosRet'],
          ParamType.String,
          true,
        ),
        selosCol: deserializeParam<String>(
          data['selosCol'],
          ParamType.String,
          true,
        ),
        servico: deserializeParam<String>(
          data['servico'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'EquipamentosOsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is EquipamentosOsStruct &&
        equipamento == other.equipamento &&
        nSerie == other.nSerie &&
        marca == other.marca &&
        modelo == other.modelo &&
        portAprov == other.portAprov &&
        nInmetro == other.nInmetro &&
        afeIniMax == other.afeIniMax &&
        afeIniMin == other.afeIniMin &&
        afeFinMax == other.afeFinMax &&
        afeFinMin == other.afeFinMin &&
        vazao == other.vazao &&
        encerranteIni == other.encerranteIni &&
        encerranteFin == other.encerranteFin &&
        volRetirado == other.volRetirado &&
        idDocumento == other.idDocumento &&
        listEquality.equals(lacresRetPainel, other.lacresRetPainel) &&
        listEquality.equals(lacresColPainel, other.lacresColPainel) &&
        listEquality.equals(lacresRetCorpo, other.lacresRetCorpo) &&
        listEquality.equals(lacresColCorpo, other.lacresColCorpo) &&
        listEquality.equals(selosRet, other.selosRet) &&
        listEquality.equals(selosCol, other.selosCol) &&
        listEquality.equals(servico, other.servico);
  }

  @override
  int get hashCode => const ListEquality().hash([
        equipamento,
        nSerie,
        marca,
        modelo,
        portAprov,
        nInmetro,
        afeIniMax,
        afeIniMin,
        afeFinMax,
        afeFinMin,
        vazao,
        encerranteIni,
        encerranteFin,
        volRetirado,
        idDocumento,
        lacresRetPainel,
        lacresColPainel,
        lacresRetCorpo,
        lacresColCorpo,
        selosRet,
        selosCol,
        servico
      ]);
}

EquipamentosOsStruct createEquipamentosOsStruct({
  String? equipamento,
  String? nSerie,
  String? marca,
  String? modelo,
  String? portAprov,
  String? nInmetro,
  String? afeIniMax,
  String? afeIniMin,
  String? afeFinMax,
  String? afeFinMin,
  String? vazao,
  String? encerranteIni,
  String? encerranteFin,
  String? volRetirado,
  DocumentReference? idDocumento,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    EquipamentosOsStruct(
      equipamento: equipamento,
      nSerie: nSerie,
      marca: marca,
      modelo: modelo,
      portAprov: portAprov,
      nInmetro: nInmetro,
      afeIniMax: afeIniMax,
      afeIniMin: afeIniMin,
      afeFinMax: afeFinMax,
      afeFinMin: afeFinMin,
      vazao: vazao,
      encerranteIni: encerranteIni,
      encerranteFin: encerranteFin,
      volRetirado: volRetirado,
      idDocumento: idDocumento,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

EquipamentosOsStruct? updateEquipamentosOsStruct(
  EquipamentosOsStruct? equipamentosOs, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    equipamentosOs
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addEquipamentosOsStructData(
  Map<String, dynamic> firestoreData,
  EquipamentosOsStruct? equipamentosOs,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (equipamentosOs == null) {
    return;
  }
  if (equipamentosOs.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && equipamentosOs.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final equipamentosOsData =
      getEquipamentosOsFirestoreData(equipamentosOs, forFieldValue);
  final nestedData =
      equipamentosOsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = equipamentosOs.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getEquipamentosOsFirestoreData(
  EquipamentosOsStruct? equipamentosOs, [
  bool forFieldValue = false,
]) {
  if (equipamentosOs == null) {
    return {};
  }
  final firestoreData = mapToFirestore(equipamentosOs.toMap());

  // Add any Firestore field values
  equipamentosOs.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getEquipamentosOsListFirestoreData(
  List<EquipamentosOsStruct>? equipamentosOss,
) =>
    equipamentosOss
        ?.map((e) => getEquipamentosOsFirestoreData(e, true))
        .toList() ??
    [];
