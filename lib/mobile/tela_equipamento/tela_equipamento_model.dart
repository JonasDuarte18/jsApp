import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'tela_equipamento_widget.dart' show TelaEquipamentoWidget;
import 'package:flutter/material.dart';

class TelaEquipamentoModel extends FlutterFlowModel<TelaEquipamentoWidget> {
  ///  Local state fields for this page.

  List<String> selosRet = [];
  void addToSelosRet(String item) => selosRet.add(item);
  void removeFromSelosRet(String item) => selosRet.remove(item);
  void removeAtIndexFromSelosRet(int index) => selosRet.removeAt(index);
  void insertAtIndexInSelosRet(int index, String item) =>
      selosRet.insert(index, item);
  void updateSelosRetAtIndex(int index, Function(String) updateFn) =>
      selosRet[index] = updateFn(selosRet[index]);

  List<String> lacresRetPainel = [];
  void addToLacresRetPainel(String item) => lacresRetPainel.add(item);
  void removeFromLacresRetPainel(String item) => lacresRetPainel.remove(item);
  void removeAtIndexFromLacresRetPainel(int index) =>
      lacresRetPainel.removeAt(index);
  void insertAtIndexInLacresRetPainel(int index, String item) =>
      lacresRetPainel.insert(index, item);
  void updateLacresRetPainelAtIndex(int index, Function(String) updateFn) =>
      lacresRetPainel[index] = updateFn(lacresRetPainel[index]);

  List<String> lacresRetCorpo = [];
  void addToLacresRetCorpo(String item) => lacresRetCorpo.add(item);
  void removeFromLacresRetCorpo(String item) => lacresRetCorpo.remove(item);
  void removeAtIndexFromLacresRetCorpo(int index) =>
      lacresRetCorpo.removeAt(index);
  void insertAtIndexInLacresRetCorpo(int index, String item) =>
      lacresRetCorpo.insert(index, item);
  void updateLacresRetCorpoAtIndex(int index, Function(String) updateFn) =>
      lacresRetCorpo[index] = updateFn(lacresRetCorpo[index]);

  List<String> selosCol = [];
  void addToSelosCol(String item) => selosCol.add(item);
  void removeFromSelosCol(String item) => selosCol.remove(item);
  void removeAtIndexFromSelosCol(int index) => selosCol.removeAt(index);
  void insertAtIndexInSelosCol(int index, String item) =>
      selosCol.insert(index, item);
  void updateSelosColAtIndex(int index, Function(String) updateFn) =>
      selosCol[index] = updateFn(selosCol[index]);

  List<String> lacresColPainel = [];
  void addToLacresColPainel(String item) => lacresColPainel.add(item);
  void removeFromLacresColPainel(String item) => lacresColPainel.remove(item);
  void removeAtIndexFromLacresColPainel(int index) =>
      lacresColPainel.removeAt(index);
  void insertAtIndexInLacresColPainel(int index, String item) =>
      lacresColPainel.insert(index, item);
  void updateLacresColPainelAtIndex(int index, Function(String) updateFn) =>
      lacresColPainel[index] = updateFn(lacresColPainel[index]);

  List<String> lacresColCorpo = [];
  void addToLacresColCorpo(String item) => lacresColCorpo.add(item);
  void removeFromLacresColCorpo(String item) => lacresColCorpo.remove(item);
  void removeAtIndexFromLacresColCorpo(int index) =>
      lacresColCorpo.removeAt(index);
  void insertAtIndexInLacresColCorpo(int index, String item) =>
      lacresColCorpo.insert(index, item);
  void updateLacresColCorpoAtIndex(int index, Function(String) updateFn) =>
      lacresColCorpo[index] = updateFn(lacresColCorpo[index]);

  List<String> servicos = [];
  void addToServicos(String item) => servicos.add(item);
  void removeFromServicos(String item) => servicos.remove(item);
  void removeAtIndexFromServicos(int index) => servicos.removeAt(index);
  void insertAtIndexInServicos(int index, String item) =>
      servicos.insert(index, item);
  void updateServicosAtIndex(int index, Function(String) updateFn) =>
      servicos[index] = updateFn(servicos[index]);

  List<String> materiais = [];
  void addToMateriais(String item) => materiais.add(item);
  void removeFromMateriais(String item) => materiais.remove(item);
  void removeAtIndexFromMateriais(int index) => materiais.removeAt(index);
  void insertAtIndexInMateriais(int index, String item) =>
      materiais.insert(index, item);
  void updateMateriaisAtIndex(int index, Function(String) updateFn) =>
      materiais[index] = updateFn(materiais[index]);

  DocumentReference? refEquipamento;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for enceIni widget.
  FocusNode? enceIniFocusNode;
  TextEditingController? enceIniController;
  String? Function(BuildContext, String?)? enceIniControllerValidator;
  // State field(s) for enceFin widget.
  FocusNode? enceFinFocusNode;
  TextEditingController? enceFinController;
  String? Function(BuildContext, String?)? enceFinControllerValidator;
  // State field(s) for afeIniMax widget.
  FocusNode? afeIniMaxFocusNode;
  TextEditingController? afeIniMaxController;
  String? Function(BuildContext, String?)? afeIniMaxControllerValidator;
  // State field(s) for afeIniMin widget.
  FocusNode? afeIniMinFocusNode;
  TextEditingController? afeIniMinController;
  String? Function(BuildContext, String?)? afeIniMinControllerValidator;
  // State field(s) for afeFinMax widget.
  FocusNode? afeFinMaxFocusNode;
  TextEditingController? afeFinMaxController;
  String? Function(BuildContext, String?)? afeFinMaxControllerValidator;
  // State field(s) for afeFinMin widget.
  FocusNode? afeFinMinFocusNode;
  TextEditingController? afeFinMinController;
  String? Function(BuildContext, String?)? afeFinMinControllerValidator;
  // State field(s) for vazao widget.
  FocusNode? vazaoFocusNode;
  TextEditingController? vazaoController;
  String? Function(BuildContext, String?)? vazaoControllerValidator;
  // State field(s) for nImetro widget.
  FocusNode? nImetroFocusNode;
  TextEditingController? nImetroController;
  String? Function(BuildContext, String?)? nImetroControllerValidator;
  // State field(s) for seloRet widget.
  FocusNode? seloRetFocusNode;
  TextEditingController? seloRetController;
  String? Function(BuildContext, String?)? seloRetControllerValidator;
  // State field(s) for seloCol widget.
  List<String>? seloColValue;
  FormFieldController<List<String>>? seloColValueController;
  // State field(s) for lacreRetPai widget.
  FocusNode? lacreRetPaiFocusNode;
  TextEditingController? lacreRetPaiController;
  String? Function(BuildContext, String?)? lacreRetPaiControllerValidator;
  // State field(s) for lacreColocadoP widget.
  List<String>? lacreColocadoPValue1;
  FormFieldController<List<String>>? lacreColocadoPValueController1;
  // State field(s) for lacreRetCor widget.
  FocusNode? lacreRetCorFocusNode;
  TextEditingController? lacreRetCorController;
  String? Function(BuildContext, String?)? lacreRetCorControllerValidator;
  // State field(s) for lacreColocadoP widget.
  List<String>? lacreColocadoPValue2;
  FormFieldController<List<String>>? lacreColocadoPValueController2;
  // State field(s) for servico widget.
  List<String>? servicoValue;
  FormFieldController<List<String>>? servicoValueController;
  // State field(s) for material widget.
  List<String>? materialValue;
  FormFieldController<List<String>>? materialValueController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    enceIniFocusNode?.dispose();
    enceIniController?.dispose();

    enceFinFocusNode?.dispose();
    enceFinController?.dispose();

    afeIniMaxFocusNode?.dispose();
    afeIniMaxController?.dispose();

    afeIniMinFocusNode?.dispose();
    afeIniMinController?.dispose();

    afeFinMaxFocusNode?.dispose();
    afeFinMaxController?.dispose();

    afeFinMinFocusNode?.dispose();
    afeFinMinController?.dispose();

    vazaoFocusNode?.dispose();
    vazaoController?.dispose();

    nImetroFocusNode?.dispose();
    nImetroController?.dispose();

    seloRetFocusNode?.dispose();
    seloRetController?.dispose();

    lacreRetPaiFocusNode?.dispose();
    lacreRetPaiController?.dispose();

    lacreRetCorFocusNode?.dispose();
    lacreRetCorController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
