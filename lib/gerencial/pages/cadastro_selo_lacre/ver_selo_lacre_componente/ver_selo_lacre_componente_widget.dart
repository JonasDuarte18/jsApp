import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ver_selo_lacre_componente_model.dart';
export 'ver_selo_lacre_componente_model.dart';

class VerSeloLacreComponenteWidget extends StatefulWidget {
  const VerSeloLacreComponenteWidget({super.key});

  @override
  State<VerSeloLacreComponenteWidget> createState() =>
      _VerSeloLacreComponenteWidgetState();
}

class _VerSeloLacreComponenteWidgetState
    extends State<VerSeloLacreComponenteWidget> {
  late VerSeloLacreComponenteModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VerSeloLacreComponenteModel());

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
        'Ver',
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
