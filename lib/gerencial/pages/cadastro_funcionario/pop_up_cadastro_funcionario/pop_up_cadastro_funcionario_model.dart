import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'pop_up_cadastro_funcionario_widget.dart'
    show PopUpCadastroFuncionarioWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PopUpCadastroFuncionarioModel
    extends FlutterFlowModel<PopUpCadastroFuncionarioWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for nomeFunc widget.
  FocusNode? nomeFuncFocusNode;
  TextEditingController? nomeFuncController;
  String? Function(BuildContext, String?)? nomeFuncControllerValidator;
  String? _nomeFuncControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for cpf widget.
  FocusNode? cpfFocusNode;
  TextEditingController? cpfController;
  final cpfMask = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)? cpfControllerValidator;
  String? _cpfControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for dataNasc widget.
  FocusNode? dataNascFocusNode;
  TextEditingController? dataNascController;
  final dataNascMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? dataNascControllerValidator;
  // State field(s) for func widget.
  final funcKey = GlobalKey();
  FocusNode? funcFocusNode;
  TextEditingController? funcController;
  String? funcSelectedOption;
  String? Function(BuildContext, String?)? funcControllerValidator;
  // State field(s) for cep widget.
  FocusNode? cepFocusNode;
  TextEditingController? cepController;
  final cepMask = MaskTextInputFormatter(mask: '#####-###');
  String? Function(BuildContext, String?)? cepControllerValidator;
  // State field(s) for logradouro widget.
  FocusNode? logradouroFocusNode;
  TextEditingController? logradouroController;
  String? Function(BuildContext, String?)? logradouroControllerValidator;
  // State field(s) for bairro widget.
  FocusNode? bairroFocusNode;
  TextEditingController? bairroController;
  String? Function(BuildContext, String?)? bairroControllerValidator;
  // State field(s) for numero widget.
  FocusNode? numeroFocusNode;
  TextEditingController? numeroController;
  String? Function(BuildContext, String?)? numeroControllerValidator;
  // State field(s) for complemento widget.
  FocusNode? complementoFocusNode;
  TextEditingController? complementoController;
  String? Function(BuildContext, String?)? complementoControllerValidator;
  // State field(s) for cidade widget.
  FocusNode? cidadeFocusNode;
  TextEditingController? cidadeController;
  String? Function(BuildContext, String?)? cidadeControllerValidator;
  // State field(s) for uf widget.
  String? ufValue;
  FormFieldController<String>? ufValueController;
  // State field(s) for usuario widget.
  FocusNode? usuarioFocusNode;
  TextEditingController? usuarioController;
  String? Function(BuildContext, String?)? usuarioControllerValidator;
  String? _usuarioControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  String? _emailControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for senha widget.
  FocusNode? senhaFocusNode1;
  TextEditingController? senhaController1;
  late bool senhaVisibility1;
  String? Function(BuildContext, String?)? senhaController1Validator;
  String? _senhaController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for senha widget.
  FocusNode? senhaFocusNode2;
  TextEditingController? senhaController2;
  late bool senhaVisibility2;
  String? Function(BuildContext, String?)? senhaController2Validator;
  String? _senhaController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  FuncionariosRecord? ultimo;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<FuncionariosRecord>? consultouFuncionrios;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    nomeFuncControllerValidator = _nomeFuncControllerValidator;
    cpfControllerValidator = _cpfControllerValidator;
    usuarioControllerValidator = _usuarioControllerValidator;
    emailControllerValidator = _emailControllerValidator;
    senhaVisibility1 = false;
    senhaController1Validator = _senhaController1Validator;
    senhaVisibility2 = false;
    senhaController2Validator = _senhaController2Validator;
  }

  @override
  void dispose() {
    nomeFuncFocusNode?.dispose();
    nomeFuncController?.dispose();

    cpfFocusNode?.dispose();
    cpfController?.dispose();

    dataNascFocusNode?.dispose();
    dataNascController?.dispose();

    funcFocusNode?.dispose();

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

    usuarioFocusNode?.dispose();
    usuarioController?.dispose();

    emailFocusNode?.dispose();
    emailController?.dispose();

    senhaFocusNode1?.dispose();
    senhaController1?.dispose();

    senhaFocusNode2?.dispose();
    senhaController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
