import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ver_funcionario_componente_model.dart';
export 'ver_funcionario_componente_model.dart';

class VerFuncionarioComponenteWidget extends StatefulWidget {
  const VerFuncionarioComponenteWidget({super.key});

  @override
  State<VerFuncionarioComponenteWidget> createState() =>
      _VerFuncionarioComponenteWidgetState();
}

class _VerFuncionarioComponenteWidgetState
    extends State<VerFuncionarioComponenteWidget> {
  late VerFuncionarioComponenteModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VerFuncionarioComponenteModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return MouseRegion(
      opaque: false,
      cursor: MouseCursor.defer ?? MouseCursor.defer,
      onEnter: ((event) async {
        setState(() => _model.mouseRegionHovered = true);
      }),
      onExit: ((event) async {
        setState(() => _model.mouseRegionHovered = false);
      }),
      child: Text(
        'Ver funcionário',
        style: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
              color: _model.mouseRegionHovered? const Color(0xFF1C84FF)
                  : const Color(0xFF99A1B7),
              useGoogleFonts: GoogleFonts.asMap()
                  .containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
            ),
      ),
    );
  }
}
