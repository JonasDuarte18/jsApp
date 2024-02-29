import '/flutter_flow/flutter_flow_util.dart';
import '/gerencial/reutilizaveis/menu_vertical_esquerdo/menu_vertical_esquerdo_widget.dart';
import 'pg_teste_widget.dart' show PgTesteWidget;
import 'package:flutter/material.dart';

class PgTesteModel extends FlutterFlowModel<PgTesteWidget> {
  ///  Local state fields for this page.

  String mostrarSubMenu = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for MenuVerticalEsquerdo component.
  late MenuVerticalEsquerdoModel menuVerticalEsquerdoModel;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    menuVerticalEsquerdoModel =
        createModel(context, () => MenuVerticalEsquerdoModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    menuVerticalEsquerdoModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
