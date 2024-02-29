import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/gerencial/reutilizaveis/barra_perfil/barra_perfil_widget.dart';
import '/gerencial/reutilizaveis/menu_vertical_esquerdo/menu_vertical_esquerdo_widget.dart';
import 'pg_funcionario_widget.dart' show PgFuncionarioWidget;
import 'package:flutter/material.dart';

class PgFuncionarioModel extends FlutterFlowModel<PgFuncionarioWidget> {
  ///  Local state fields for this page.

  String mostrarSubMenu = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for MenuVerticalEsquerdo component.
  late MenuVerticalEsquerdoModel menuVerticalEsquerdoModel;
  // Model for barraPerfil component.
  late BarraPerfilModel barraPerfilModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<FuncionariosRecord> simpleSearchResults = [];
  // State field(s) for MouseRegion2 widget.
  bool mouseRegion2Hovered = false;
  // State field(s) for MouseRegion1 widget.
  bool mouseRegion1Hovered = false;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<FuncionariosRecord>();

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
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
