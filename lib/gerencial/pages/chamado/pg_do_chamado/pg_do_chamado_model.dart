import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/gerencial/reutilizaveis/barra_perfil/barra_perfil_widget.dart';
import '/gerencial/reutilizaveis/menu_vertical_esquerdo/menu_vertical_esquerdo_widget.dart';
import 'pg_do_chamado_widget.dart' show PgDoChamadoWidget;
import 'package:flutter/material.dart';

class PgDoChamadoModel extends FlutterFlowModel<PgDoChamadoWidget> {
  ///  Local state fields for this page.

  String mostrarSubMenu = '';

  bool editaTecResp = false;

  bool editaSolicitante = false;

  bool editaDataFechamento = false;

  bool editaMotivo = false;

  bool vizualizaConteudo = false;

  ///  State fields for stateful widgets in this page.

  // Model for MenuVerticalEsquerdo component.
  late MenuVerticalEsquerdoModel menuVerticalEsquerdoModel;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // Model for barraPerfil component.
  late BarraPerfilModel barraPerfilModel;
  // State field(s) for RegEditaFechamento widget.
  bool regEditaFechamentoHovered = false;
  // State field(s) for tecResp widget.
  String? tecRespValue;
  FormFieldController<String>? tecRespValueController;
  // State field(s) for RegEditaTecResp widget.
  bool regEditaTecRespHovered = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for solicitante1 widget.
  FocusNode? solicitante1FocusNode;
  TextEditingController? solicitante1Controller;
  String? Function(BuildContext, String?)? solicitante1ControllerValidator;
  // State field(s) for RegEditaSolicitante widget.
  bool regEditaSolicitanteHovered = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    menuVerticalEsquerdoModel =
        createModel(context, () => MenuVerticalEsquerdoModel());
    barraPerfilModel = createModel(context, () => BarraPerfilModel());
  }

  @override
  void dispose() {
    menuVerticalEsquerdoModel.dispose();
    barraPerfilModel.dispose();
    solicitante1FocusNode?.dispose();
    solicitante1Controller?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
