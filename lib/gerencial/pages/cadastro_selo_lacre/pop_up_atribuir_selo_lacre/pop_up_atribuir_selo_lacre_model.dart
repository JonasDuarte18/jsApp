import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'pop_up_atribuir_selo_lacre_widget.dart'
    show PopUpAtribuirSeloLacreWidget;
import 'package:flutter/material.dart';

class PopUpAtribuirSeloLacreModel
    extends FlutterFlowModel<PopUpAtribuirSeloLacreWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TEC widget.
  String? tecValue;
  FormFieldController<String>? tecValueController;
  // State field(s) for SeloLacre widget.
  FormFieldController<String>? seloLacreValueController;
  // State field(s) for caixaTexto widget.
  FocusNode? caixaTextoFocusNode1;
  TextEditingController? caixaTextoController1;
  String? Function(BuildContext, String?)? caixaTextoController1Validator;
  // State field(s) for caixaTexto widget.
  FocusNode? caixaTextoFocusNode2;
  TextEditingController? caixaTextoController2;
  String? Function(BuildContext, String?)? caixaTextoController2Validator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    caixaTextoFocusNode1?.dispose();
    caixaTextoController1?.dispose();

    caixaTextoFocusNode2?.dispose();
    caixaTextoController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? get seloLacreValue => seloLacreValueController?.value;
}
