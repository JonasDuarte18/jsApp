import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/gerencial/reutilizaveis/barra_perfil/barra_perfil_widget.dart';
import '/gerencial/reutilizaveis/menu_vertical_esquerdo/menu_vertical_esquerdo_widget.dart';
import 'pg_chamados_widget.dart' show PgChamadosWidget;
import 'package:flutter/material.dart';

class PgChamadosModel extends FlutterFlowModel<PgChamadosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for MenuVerticalEsquerdo component.
  late MenuVerticalEsquerdoModel menuVerticalEsquerdoModel;
  // Model for barraPerfil component.
  late BarraPerfilModel barraPerfilModel;
  // State field(s) for textChamado widget.
  FocusNode? textChamadoFocusNode;
  TextEditingController? textChamadoController;
  String? Function(BuildContext, String?)? textChamadoControllerValidator;
  List<ChamadosRecord> simpleSearchResults = [];

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    menuVerticalEsquerdoModel =
        createModel(context, () => MenuVerticalEsquerdoModel());
    barraPerfilModel = createModel(context, () => BarraPerfilModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    menuVerticalEsquerdoModel.dispose();
    barraPerfilModel.dispose();
    textChamadoFocusNode?.dispose();
    textChamadoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
