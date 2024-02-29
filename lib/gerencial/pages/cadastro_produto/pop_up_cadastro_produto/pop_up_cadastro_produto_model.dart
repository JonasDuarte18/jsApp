import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'pop_up_cadastro_produto_widget.dart' show PopUpCadastroProdutoWidget;
import 'package:flutter/material.dart';

class PopUpCadastroProdutoModel
    extends FlutterFlowModel<PopUpCadastroProdutoWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeController;
  String? Function(BuildContext, String?)? nomeControllerValidator;
  // State field(s) for descricao widget.
  FocusNode? descricaoFocusNode;
  TextEditingController? descricaoController;
  String? Function(BuildContext, String?)? descricaoControllerValidator;
  // State field(s) for preco widget.
  FocusNode? precoFocusNode;
  TextEditingController? precoController;
  String? Function(BuildContext, String?)? precoControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<ProdutoRecord>? numeroprodutos;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  ProdutoRecord? ultimo;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

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
