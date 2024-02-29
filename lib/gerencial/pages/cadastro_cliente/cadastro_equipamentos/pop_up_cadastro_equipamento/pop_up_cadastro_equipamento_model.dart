import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'pop_up_cadastro_equipamento_widget.dart'
    show PopUpCadastroEquipamentoWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PopUpCadastroEquipamentoModel
    extends FlutterFlowModel<PopUpCadastroEquipamentoWidget> {
  ///  Local state fields for this component.

  List<String> bicosNaBomba = [];
  void addToBicosNaBomba(String item) => bicosNaBomba.add(item);
  void removeFromBicosNaBomba(String item) => bicosNaBomba.remove(item);
  void removeAtIndexFromBicosNaBomba(int index) => bicosNaBomba.removeAt(index);
  void insertAtIndexInBicosNaBomba(int index, String item) =>
      bicosNaBomba.insert(index, item);
  void updateBicosNaBombaAtIndex(int index, Function(String) updateFn) =>
      bicosNaBomba[index] = updateFn(bicosNaBomba[index]);

  int input = 0;

  EquipamentosRecord? bombaSelecionada;

  ///  State fields for stateful widgets in this component.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in DropDown widget.
  List<EquipamentosRecord>? consultouBombas;
  // State field(s) for nTanque widget.
  FocusNode? nTanqueFocusNode;
  TextEditingController? nTanqueController;
  String? Function(BuildContext, String?)? nTanqueControllerValidator;
  String? _nTanqueControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for combustivel widget.
  String? combustivelValue1;
  FormFieldController<String>? combustivelValueController1;
  // State field(s) for fabrica widget.
  FocusNode? fabricaFocusNode1;
  TextEditingController? fabricaController1;
  String? Function(BuildContext, String?)? fabricaController1Validator;
  String? _fabricaController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for nSerie widget.
  FocusNode? nSerieFocusNode1;
  TextEditingController? nSerieController1;
  String? Function(BuildContext, String?)? nSerieController1Validator;
  String? _nSerieController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for compartimentado widget.
  FormFieldController<String>? compartimentadoValueController;
  // State field(s) for normaFabrica widget.
  FocusNode? normaFabricaFocusNode;
  TextEditingController? normaFabricaController;
  String? Function(BuildContext, String?)? normaFabricaControllerValidator;
  String? _normaFabricaControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for dataFabrica widget.
  FocusNode? dataFabricaFocusNode;
  TextEditingController? dataFabricaController;
  final dataFabricaMask = MaskTextInputFormatter(mask: '##/####');
  String? Function(BuildContext, String?)? dataFabricaControllerValidator;
  String? _dataFabricaControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for capacidade widget.
  FocusNode? capacidadeFocusNode;
  TextEditingController? capacidadeController;
  String? Function(BuildContext, String?)? capacidadeControllerValidator;
  String? _capacidadeControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for diametro widget.
  FocusNode? diametroFocusNode;
  TextEditingController? diametroController;
  String? Function(BuildContext, String?)? diametroControllerValidator;
  String? _diametroControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for nSerieMedidor widget.
  FocusNode? nSerieMedidorFocusNode;
  TextEditingController? nSerieMedidorController;
  String? Function(BuildContext, String?)? nSerieMedidorControllerValidator;
  // State field(s) for parede widget.
  FormFieldController<String>? paredeValueController;
  // State field(s) for descarga widget.
  FormFieldController<String>? descargaValueController;
  // State field(s) for nBomba widget.
  FocusNode? nBombaFocusNode;
  TextEditingController? nBombaController;
  String? Function(BuildContext, String?)? nBombaControllerValidator;
  String? _nBombaControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for numeroBicos widget.
  FocusNode? numeroBicosFocusNode;
  TextEditingController? numeroBicosController;
  final numeroBicosMask = MaskTextInputFormatter(mask: '#');
  String? Function(BuildContext, String?)? numeroBicosControllerValidator;
  String? _numeroBicosControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for fabrica widget.
  FocusNode? fabricaFocusNode2;
  TextEditingController? fabricaController2;
  String? Function(BuildContext, String?)? fabricaController2Validator;
  String? _fabricaController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for modelo widget.
  FocusNode? modeloFocusNode;
  TextEditingController? modeloController;
  String? Function(BuildContext, String?)? modeloControllerValidator;
  String? _modeloControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for nSerie widget.
  FocusNode? nSerieFocusNode2;
  TextEditingController? nSerieController2;
  String? Function(BuildContext, String?)? nSerieController2Validator;
  String? _nSerieController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for nBombaBico widget.
  FocusNode? nBombaBicoFocusNode;
  TextEditingController? nBombaBicoController;
  final nBombaBicoMask = MaskTextInputFormatter(mask: '#');
  String? Function(BuildContext, String?)? nBombaBicoControllerValidator;
  // State field(s) for nBico widget.
  FocusNode? nBicoFocusNode;
  TextEditingController? nBicoController;
  final nBicoMask = MaskTextInputFormatter(mask: '#');
  String? Function(BuildContext, String?)? nBicoControllerValidator;
  String? _nBicoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    if (val.isEmpty) {
      return 'Requires at least 1 characters.';
    }

    return null;
  }

  // State field(s) for combustivel widget.
  String? combustivelValue2;
  FormFieldController<String>? combustivelValueController2;
  // State field(s) for codConcentrador widget.
  FocusNode? codConcentradorFocusNode;
  TextEditingController? codConcentradorController;
  String? Function(BuildContext, String?)? codConcentradorControllerValidator;
  String? _codConcentradorControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<EquipamentosRecord>? consultouTanques;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<EquipamentosRecord>? consultouBicos;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    nTanqueControllerValidator = _nTanqueControllerValidator;
    fabricaController1Validator = _fabricaController1Validator;
    nSerieController1Validator = _nSerieController1Validator;
    normaFabricaControllerValidator = _normaFabricaControllerValidator;
    dataFabricaControllerValidator = _dataFabricaControllerValidator;
    capacidadeControllerValidator = _capacidadeControllerValidator;
    diametroControllerValidator = _diametroControllerValidator;
    nBombaControllerValidator = _nBombaControllerValidator;
    numeroBicosControllerValidator = _numeroBicosControllerValidator;
    fabricaController2Validator = _fabricaController2Validator;
    modeloControllerValidator = _modeloControllerValidator;
    nSerieController2Validator = _nSerieController2Validator;
    nBicoControllerValidator = _nBicoControllerValidator;
    codConcentradorControllerValidator = _codConcentradorControllerValidator;
  }

  @override
  void dispose() {
    nTanqueFocusNode?.dispose();
    nTanqueController?.dispose();

    fabricaFocusNode1?.dispose();
    fabricaController1?.dispose();

    nSerieFocusNode1?.dispose();
    nSerieController1?.dispose();

    normaFabricaFocusNode?.dispose();
    normaFabricaController?.dispose();

    dataFabricaFocusNode?.dispose();
    dataFabricaController?.dispose();

    capacidadeFocusNode?.dispose();
    capacidadeController?.dispose();

    diametroFocusNode?.dispose();
    diametroController?.dispose();

    nSerieMedidorFocusNode?.dispose();
    nSerieMedidorController?.dispose();

    nBombaFocusNode?.dispose();
    nBombaController?.dispose();

    numeroBicosFocusNode?.dispose();
    numeroBicosController?.dispose();

    fabricaFocusNode2?.dispose();
    fabricaController2?.dispose();

    modeloFocusNode?.dispose();
    modeloController?.dispose();

    nSerieFocusNode2?.dispose();
    nSerieController2?.dispose();

    nBombaBicoFocusNode?.dispose();
    nBombaBicoController?.dispose();

    nBicoFocusNode?.dispose();
    nBicoController?.dispose();

    codConcentradorFocusNode?.dispose();
    codConcentradorController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? get compartimentadoValue => compartimentadoValueController?.value;
  String? get paredeValue => paredeValueController?.value;
  String? get descargaValue => descargaValueController?.value;
}
