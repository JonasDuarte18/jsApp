import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'pop_up_cadastro_cliente_widget.dart' show PopUpCadastroClienteWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PopUpCadastroClienteModel
    extends FlutterFlowModel<PopUpCadastroClienteWidget> {
  ///  Local state fields for this component.

  int? ultimoCliente;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for cnpj widget.
  FocusNode? cnpjFocusNode;
  TextEditingController? cnpjController;
  final cnpjMask = MaskTextInputFormatter(mask: '##.###.###/####-##');
  String? Function(BuildContext, String?)? cnpjControllerValidator;
  String? _cnpjControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório.';
    }

    if (val.length < 14) {
      return 'CNPJ incorreto';
    }

    return null;
  }

  // State field(s) for razao widget.
  FocusNode? razaoFocusNode;
  TextEditingController? razaoController;
  String? Function(BuildContext, String?)? razaoControllerValidator;
  String? _razaoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório.';
    }

    return null;
  }

  // State field(s) for fantasia widget.
  FocusNode? fantasiaFocusNode;
  TextEditingController? fantasiaController;
  String? Function(BuildContext, String?)? fantasiaControllerValidator;
  // State field(s) for cep widget.
  FocusNode? cepFocusNode;
  TextEditingController? cepController;
  final cepMask = MaskTextInputFormatter(mask: '#####-###');
  String? Function(BuildContext, String?)? cepControllerValidator;
  // State field(s) for logradouro widget.
  FocusNode? logradouroFocusNode;
  TextEditingController? logradouroController;
  String? Function(BuildContext, String?)? logradouroControllerValidator;
  String? _logradouroControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório.';
    }

    return null;
  }

  // State field(s) for bairro widget.
  FocusNode? bairroFocusNode;
  TextEditingController? bairroController;
  String? Function(BuildContext, String?)? bairroControllerValidator;
  String? _bairroControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório.';
    }

    return null;
  }

  // State field(s) for numero widget.
  FocusNode? numeroFocusNode;
  TextEditingController? numeroController;
  final numeroMask = MaskTextInputFormatter(mask: '####');
  String? Function(BuildContext, String?)? numeroControllerValidator;
  String? _numeroControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório.';
    }

    return null;
  }

  // State field(s) for complemento widget.
  FocusNode? complementoFocusNode;
  TextEditingController? complementoController;
  String? Function(BuildContext, String?)? complementoControllerValidator;
  // State field(s) for cidade widget.
  FocusNode? cidadeFocusNode;
  TextEditingController? cidadeController;
  String? Function(BuildContext, String?)? cidadeControllerValidator;
  String? _cidadeControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório.';
    }

    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<ClientesRecord>? numeroClientes;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  ClientesRecord? ultimo;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ClientesRecord? clienteCriado;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cnpjControllerValidator = _cnpjControllerValidator;
    razaoControllerValidator = _razaoControllerValidator;
    logradouroControllerValidator = _logradouroControllerValidator;
    bairroControllerValidator = _bairroControllerValidator;
    numeroControllerValidator = _numeroControllerValidator;
    cidadeControllerValidator = _cidadeControllerValidator;
  }

  @override
  void dispose() {
    cnpjFocusNode?.dispose();
    cnpjController?.dispose();

    razaoFocusNode?.dispose();
    razaoController?.dispose();

    fantasiaFocusNode?.dispose();
    fantasiaController?.dispose();

    cepFocusNode?.dispose();
    cepController?.dispose();

    logradouroFocusNode?.dispose();
    logradouroController?.dispose();

    bairroFocusNode?.dispose();
    bairroController?.dispose();

    numeroFocusNode?.dispose();
    numeroController?.dispose();

    complementoFocusNode?.dispose();
    complementoController?.dispose();

    cidadeFocusNode?.dispose();
    cidadeController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
