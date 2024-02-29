import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'selecao_pop_up_cliente_widget.dart' show SelecaoPopUpClienteWidget;
import 'package:flutter/material.dart';

class SelecaoPopUpClienteModel
    extends FlutterFlowModel<SelecaoPopUpClienteWidget> {
  ///  Local state fields for this component.

  bool usaJsApp = false;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<ClientesRecord> simpleSearchResults = [];
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<ClientesRecord>();
  // Stores action output result for [Firestore Query - Query a collection] action in Icon-Selecao widget.
  ChamadosRecord? ultimoChamado;
  // Stores action output result for [Backend Call - Create Document] action in Icon-Selecao widget.
  ChamadosRecord? chamadoCriado;

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
