import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'pop_up_cadastro_servicos_widget.dart' show PopUpCadastroServicosWidget;
import 'package:flutter/material.dart';

class PopUpCadastroServicosModel
    extends FlutterFlowModel<PopUpCadastroServicosWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeController;
  String? Function(BuildContext, String?)? nomeControllerValidator;
  String? _nomeControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório.';
    }

    return null;
  }

  // State field(s) for descricao widget.
  FocusNode? descricaoFocusNode;
  TextEditingController? descricaoController;
  String? Function(BuildContext, String?)? descricaoControllerValidator;
  String? _descricaoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório.';
    }

    return null;
  }

  // State field(s) for preco widget.
  FocusNode? precoFocusNode;
  TextEditingController? precoController;
  String? Function(BuildContext, String?)? precoControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<ServicosRecord>? numeroServicos;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  ServicosRecord? ultimo;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    nomeControllerValidator = _nomeControllerValidator;
    descricaoControllerValidator = _descricaoControllerValidator;
  }

  @override
  void dispose() {
    nomeFocusNode?.dispose();
    nomeController?.dispose();

    descricaoFocusNode?.dispose();
    descricaoController?.dispose();

    precoFocusNode?.dispose();
    precoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
