import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'pop_up_ad_equipamento_widget.dart' show PopUpAdEquipamentoWidget;
import 'package:flutter/material.dart';

class PopUpAdEquipamentoModel
    extends FlutterFlowModel<PopUpAdEquipamentoWidget> {
  ///  Local state fields for this component.

  List<String> painelLacreRetirado = [];
  void addToPainelLacreRetirado(String item) => painelLacreRetirado.add(item);
  void removeFromPainelLacreRetirado(String item) =>
      painelLacreRetirado.remove(item);
  void removeAtIndexFromPainelLacreRetirado(int index) =>
      painelLacreRetirado.removeAt(index);
  void insertAtIndexInPainelLacreRetirado(int index, String item) =>
      painelLacreRetirado.insert(index, item);
  void updatePainelLacreRetiradoAtIndex(int index, Function(String) updateFn) =>
      painelLacreRetirado[index] = updateFn(painelLacreRetirado[index]);

  List<String> corpoLacreRetirado = [];
  void addToCorpoLacreRetirado(String item) => corpoLacreRetirado.add(item);
  void removeFromCorpoLacreRetirado(String item) =>
      corpoLacreRetirado.remove(item);
  void removeAtIndexFromCorpoLacreRetirado(int index) =>
      corpoLacreRetirado.removeAt(index);
  void insertAtIndexInCorpoLacreRetirado(int index, String item) =>
      corpoLacreRetirado.insert(index, item);
  void updateCorpoLacreRetiradoAtIndex(int index, Function(String) updateFn) =>
      corpoLacreRetirado[index] = updateFn(corpoLacreRetirado[index]);

  List<String> selosRetirados = [];
  void addToSelosRetirados(String item) => selosRetirados.add(item);
  void removeFromSelosRetirados(String item) => selosRetirados.remove(item);
  void removeAtIndexFromSelosRetirados(int index) =>
      selosRetirados.removeAt(index);
  void insertAtIndexInSelosRetirados(int index, String item) =>
      selosRetirados.insert(index, item);
  void updateSelosRetiradosAtIndex(int index, Function(String) updateFn) =>
      selosRetirados[index] = updateFn(selosRetirados[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for seloR widget.
  FocusNode? seloRFocusNode;
  TextEditingController? seloRController;
  String? Function(BuildContext, String?)? seloRControllerValidator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for seloColocado widget.
  List<String>? seloColocadoValue;
  FormFieldController<List<String>>? seloColocadoValueController;
  // State field(s) for lacreRP widget.
  FocusNode? lacreRPFocusNode;
  TextEditingController? lacreRPController;
  String? Function(BuildContext, String?)? lacreRPControllerValidator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for lacreColocadoP widget.
  List<String>? lacreColocadoPValue;
  FormFieldController<List<String>>? lacreColocadoPValueController;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for lacreRC widget.
  FocusNode? lacreRCFocusNode;
  TextEditingController? lacreRCController;
  String? Function(BuildContext, String?)? lacreRCControllerValidator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;
  // State field(s) for lacreColocadoC widget.
  List<String>? lacreColocadoCValue;
  FormFieldController<List<String>>? lacreColocadoCValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController8;
  String? Function(BuildContext, String?)? textController8Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController9;
  String? Function(BuildContext, String?)? textController9Validator;
  // State field(s) for volRetirado widget.
  FocusNode? volRetiradoFocusNode;
  TextEditingController? volRetiradoController;
  String? Function(BuildContext, String?)? volRetiradoControllerValidator;
  // State field(s) for DropDown widget.
  List<String>? dropDownValue;
  FormFieldController<List<String>>? dropDownValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode7;
  TextEditingController? textController11;
  String? Function(BuildContext, String?)? textController11Validator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    seloRFocusNode?.dispose();
    seloRController?.dispose();

    lacreRPFocusNode?.dispose();
    lacreRPController?.dispose();

    lacreRCFocusNode?.dispose();
    lacreRCController?.dispose();

    textFieldFocusNode1?.dispose();
    textController4?.dispose();

    textFieldFocusNode2?.dispose();
    textController5?.dispose();

    textFieldFocusNode3?.dispose();
    textController6?.dispose();

    textFieldFocusNode4?.dispose();
    textController7?.dispose();

    textFieldFocusNode5?.dispose();
    textController8?.dispose();

    textFieldFocusNode6?.dispose();
    textController9?.dispose();

    volRetiradoFocusNode?.dispose();
    volRetiradoController?.dispose();

    textFieldFocusNode7?.dispose();
    textController11?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
