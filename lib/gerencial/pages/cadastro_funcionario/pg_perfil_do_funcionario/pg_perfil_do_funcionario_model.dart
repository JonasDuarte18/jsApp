import '/flutter_flow/flutter_flow_util.dart';
import '/gerencial/reutilizaveis/barra_perfil/barra_perfil_widget.dart';
import '/gerencial/reutilizaveis/menu_vertical_esquerdo/menu_vertical_esquerdo_widget.dart';
import 'pg_perfil_do_funcionario_widget.dart' show PgPerfilDoFuncionarioWidget;
import 'package:flutter/material.dart';

class PgPerfilDoFuncionarioModel
    extends FlutterFlowModel<PgPerfilDoFuncionarioWidget> {
  ///  Local state fields for this page.

  String mostrarSubMenu = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for MenuVerticalEsquerdo component.
  late MenuVerticalEsquerdoModel menuVerticalEsquerdoModel;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // Model for barraPerfil component.
  late BarraPerfilModel barraPerfilModel;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

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
    tabBarController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
