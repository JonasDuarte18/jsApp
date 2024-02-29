import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/gerencial/reutilizaveis/barra_perfil/barra_perfil_widget.dart';
import '/gerencial/reutilizaveis/menu_vertical_esquerdo/menu_vertical_esquerdo_widget.dart';
import 'pg_selo_lacre_widget.dart' show PgSeloLacreWidget;
import 'package:flutter/material.dart';

class PgSeloLacreModel extends FlutterFlowModel<PgSeloLacreWidget> {
  ///  Local state fields for this page.

  bool atribuiSeloLacre = false;

  List<String> listaMarcadores = [];
  void addToListaMarcadores(String item) => listaMarcadores.add(item);
  void removeFromListaMarcadores(String item) => listaMarcadores.remove(item);
  void removeAtIndexFromListaMarcadores(int index) =>
      listaMarcadores.removeAt(index);
  void insertAtIndexInListaMarcadores(int index, String item) =>
      listaMarcadores.insert(index, item);
  void updateListaMarcadoresAtIndex(int index, Function(String) updateFn) =>
      listaMarcadores[index] = updateFn(listaMarcadores[index]);

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
  List<SelosLacresRecord> simpleSearchResults = [];
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
      FlutterFlowDataTableController<SelosLacresRecord>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<SelosLacresRecord>();

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

    tabBarController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
