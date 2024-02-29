import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'pop_up_cadastro_selo_lacre_widget.dart'
    show PopUpCadastroSeloLacreWidget;
import 'package:flutter/material.dart';

class PopUpCadastroSeloLacreModel
    extends FlutterFlowModel<PopUpCadastroSeloLacreWidget> {
  ///  Local state fields for this component.

  int quantidade = 0;

  List<String> listaSelosLacres = [];
  void addToListaSelosLacres(String item) => listaSelosLacres.add(item);
  void removeFromListaSelosLacres(String item) => listaSelosLacres.remove(item);
  void removeAtIndexFromListaSelosLacres(int index) =>
      listaSelosLacres.removeAt(index);
  void insertAtIndexInListaSelosLacres(int index, String item) =>
      listaSelosLacres.insert(index, item);
  void updateListaSelosLacresAtIndex(int index, Function(String) updateFn) =>
      listaSelosLacres[index] = updateFn(listaSelosLacres[index]);

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for SeloLacre widget.
  FormFieldController<String>? seloLacreValueController;
  // State field(s) for TEC widget.
  String? tecValue;
  FormFieldController<String>? tecValueController;
  // State field(s) for caixaTexto widget.
  FocusNode? caixaTextoFocusNode;
  TextEditingController? caixaTextoController;
  String? Function(BuildContext, String?)? caixaTextoControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    caixaTextoFocusNode?.dispose();
    caixaTextoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? get seloLacreValue => seloLacreValueController?.value;
}
