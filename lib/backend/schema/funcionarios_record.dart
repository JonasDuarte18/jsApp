import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FuncionariosRecord extends FirestoreRecord {
  FuncionariosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "cpf_funcionario" field.
  String? _cpfFuncionario;
  String get cpfFuncionario => _cpfFuncionario ?? '';
  bool hasCpfFuncionario() => _cpfFuncionario != null;

  // "salario_funcionario" field.
  int? _salarioFuncionario;
  int get salarioFuncionario => _salarioFuncionario ?? 0;
  bool hasSalarioFuncionario() => _salarioFuncionario != null;

  // "cidade" field.
  String? _cidade;
  String get cidade => _cidade ?? '';
  bool hasCidade() => _cidade != null;

  // "codFuncionario" field.
  int? _codFuncionario;
  int get codFuncionario => _codFuncionario ?? 0;
  bool hasCodFuncionario() => _codFuncionario != null;

  // "usuario" field.
  String? _usuario;
  String get usuario => _usuario ?? '';
  bool hasUsuario() => _usuario != null;

  // "funcao" field.
  String? _funcao;
  String get funcao => _funcao ?? '';
  bool hasFuncao() => _funcao != null;

  // "uf" field.
  String? _uf;
  String get uf => _uf ?? '';
  bool hasUf() => _uf != null;

  // "logradouro" field.
  String? _logradouro;
  String get logradouro => _logradouro ?? '';
  bool hasLogradouro() => _logradouro != null;

  // "numero" field.
  String? _numero;
  String get numero => _numero ?? '';
  bool hasNumero() => _numero != null;

  // "bairro" field.
  String? _bairro;
  String get bairro => _bairro ?? '';
  bool hasBairro() => _bairro != null;

  // "cep" field.
  String? _cep;
  String get cep => _cep ?? '';
  bool hasCep() => _cep != null;

  // "dataNasc" field.
  String? _dataNasc;
  String get dataNasc => _dataNasc ?? '';
  bool hasDataNasc() => _dataNasc != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  void _initializeFields() {
    _cpfFuncionario = snapshotData['cpf_funcionario'] as String?;
    _salarioFuncionario = castToType<int>(snapshotData['salario_funcionario']);
    _cidade = snapshotData['cidade'] as String?;
    _codFuncionario = castToType<int>(snapshotData['codFuncionario']);
    _usuario = snapshotData['usuario'] as String?;
    _funcao = snapshotData['funcao'] as String?;
    _uf = snapshotData['uf'] as String?;
    _logradouro = snapshotData['logradouro'] as String?;
    _numero = snapshotData['numero'] as String?;
    _bairro = snapshotData['bairro'] as String?;
    _cep = snapshotData['cep'] as String?;
    _dataNasc = snapshotData['dataNasc'] as String?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('funcionarios');

  static Stream<FuncionariosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FuncionariosRecord.fromSnapshot(s));

  static Future<FuncionariosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FuncionariosRecord.fromSnapshot(s));

  static FuncionariosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FuncionariosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FuncionariosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FuncionariosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FuncionariosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FuncionariosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFuncionariosRecordData({
  String? cpfFuncionario,
  int? salarioFuncionario,
  String? cidade,
  int? codFuncionario,
  String? usuario,
  String? funcao,
  String? uf,
  String? logradouro,
  String? numero,
  String? bairro,
  String? cep,
  String? dataNasc,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'cpf_funcionario': cpfFuncionario,
      'salario_funcionario': salarioFuncionario,
      'cidade': cidade,
      'codFuncionario': codFuncionario,
      'usuario': usuario,
      'funcao': funcao,
      'uf': uf,
      'logradouro': logradouro,
      'numero': numero,
      'bairro': bairro,
      'cep': cep,
      'dataNasc': dataNasc,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class FuncionariosRecordDocumentEquality
    implements Equality<FuncionariosRecord> {
  const FuncionariosRecordDocumentEquality();

  @override
  bool equals(FuncionariosRecord? e1, FuncionariosRecord? e2) {
    return e1?.cpfFuncionario == e2?.cpfFuncionario &&
        e1?.salarioFuncionario == e2?.salarioFuncionario &&
        e1?.cidade == e2?.cidade &&
        e1?.codFuncionario == e2?.codFuncionario &&
        e1?.usuario == e2?.usuario &&
        e1?.funcao == e2?.funcao &&
        e1?.uf == e2?.uf &&
        e1?.logradouro == e2?.logradouro &&
        e1?.numero == e2?.numero &&
        e1?.bairro == e2?.bairro &&
        e1?.cep == e2?.cep &&
        e1?.dataNasc == e2?.dataNasc &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(FuncionariosRecord? e) => const ListEquality().hash([
        e?.cpfFuncionario,
        e?.salarioFuncionario,
        e?.cidade,
        e?.codFuncionario,
        e?.usuario,
        e?.funcao,
        e?.uf,
        e?.logradouro,
        e?.numero,
        e?.bairro,
        e?.cep,
        e?.dataNasc,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is FuncionariosRecord;
}
