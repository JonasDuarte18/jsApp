import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/gerencial/reutilizaveis/barra_perfil/barra_perfil_widget.dart';
import '/gerencial/reutilizaveis/menu_vertical_esquerdo/menu_vertical_esquerdo_widget.dart';
import 'pg_selo_lacre_atribui_widget.dart' show PgSeloLacreAtribuiWidget;
import 'package:flutter/material.dart';

class PgSeloLacreAtribuiModel
    extends FlutterFlowModel<PgSeloLacreAtribuiWidget> {
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

  int atualControlador = 1;

  int atualMarcador = 0;

  int? finalMarcador;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for MenuVerticalEsquerdo component.
  late MenuVerticalEsquerdoModel menuVerticalEsquerdoModel;
  // Model for barraPerfil component.
  late BarraPerfilModel barraPerfilModel;
  // State field(s) for INI widget.
  FocusNode? iniFocusNode;
  TextEditingController? iniController;
  String? Function(BuildContext, String?)? iniControllerValidator;
  // State field(s) for FIN widget.
  FocusNode? finFocusNode;
  TextEditingController? finController;
  String? Function(BuildContext, String?)? finControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in Icon widget.
  List<SelosLacresRecord>? listaSelos;
  // State field(s) for TEC widget.
  String? tecValue;
  FormFieldController<String>? tecValueController;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
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
    iniFocusNode?.dispose();
    iniController?.dispose();

    finFocusNode?.dispose();
    finController?.dispose();

    tabBarController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
