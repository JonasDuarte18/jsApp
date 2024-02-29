import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'pop_up_mobile_selecao_equipamento_widget.dart'
    show PopUpMobileSelecaoEquipamentoWidget;
import 'package:flutter/material.dart';

class PopUpMobileSelecaoEquipamentoModel
    extends FlutterFlowModel<PopUpMobileSelecaoEquipamentoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<EquipamentosRecord> simpleSearchResults = [];

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
