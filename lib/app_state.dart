import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<EquipamentosOsStruct> _equipamentosOs = [];
  List<EquipamentosOsStruct> get equipamentosOs => _equipamentosOs;
  set equipamentosOs(List<EquipamentosOsStruct> value) {
    _equipamentosOs = value;
  }

  void addToEquipamentosOs(EquipamentosOsStruct value) {
    _equipamentosOs.add(value);
  }

  void removeFromEquipamentosOs(EquipamentosOsStruct value) {
    _equipamentosOs.remove(value);
  }

  void removeAtIndexFromEquipamentosOs(int index) {
    _equipamentosOs.removeAt(index);
  }

  void updateEquipamentosOsAtIndex(
    int index,
    EquipamentosOsStruct Function(EquipamentosOsStruct) updateFn,
  ) {
    _equipamentosOs[index] = updateFn(_equipamentosOs[index]);
  }

  void insertAtIndexInEquipamentosOs(int index, EquipamentosOsStruct value) {
    _equipamentosOs.insert(index, value);
  }

  int _atual = 0;
  int get atual => _atual;
  set atual(int value) {
    _atual = value;
  }

  String _assinatura = '';
  String get assinatura => _assinatura;
  set assinatura(String value) {
    _assinatura = value;
  }

  int _atualListas = 0;
  int get atualListas => _atualListas;
  set atualListas(int value) {
    _atualListas = value;
  }

  List<String> _SeloLacre = ['SELO', 'LACRE'];
  List<String> get SeloLacre => _SeloLacre;
  set SeloLacre(List<String> value) {
    _SeloLacre = value;
  }

  void addToSeloLacre(String value) {
    _SeloLacre.add(value);
  }

  void removeFromSeloLacre(String value) {
    _SeloLacre.remove(value);
  }

  void removeAtIndexFromSeloLacre(int index) {
    _SeloLacre.removeAt(index);
  }

  void updateSeloLacreAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _SeloLacre[index] = updateFn(_SeloLacre[index]);
  }

  void insertAtIndexInSeloLacre(int index, String value) {
    _SeloLacre.insert(index, value);
  }
}
