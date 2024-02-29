import '/flutter_flow/flutter_flow_util.dart';
import 'log_in_widget.dart' show LogInWidget;
import 'package:flutter/material.dart';

class LogInModel extends FlutterFlowModel<LogInWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for emailMobile widget.
  FocusNode? emailMobileFocusNode;
  TextEditingController? emailMobileController;
  String? Function(BuildContext, String?)? emailMobileControllerValidator;
  // State field(s) for senhaMobile widget.
  FocusNode? senhaMobileFocusNode;
  TextEditingController? senhaMobileController;
  late bool senhaMobileVisibility;
  String? Function(BuildContext, String?)? senhaMobileControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for senha widget.
  FocusNode? senhaFocusNode;
  TextEditingController? senhaController;
  late bool senhaVisibility;
  String? Function(BuildContext, String?)? senhaControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    senhaMobileVisibility = false;
    senhaVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    emailMobileFocusNode?.dispose();
    emailMobileController?.dispose();

    senhaMobileFocusNode?.dispose();
    senhaMobileController?.dispose();

    emailFocusNode?.dispose();
    emailController?.dispose();

    senhaFocusNode?.dispose();
    senhaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
