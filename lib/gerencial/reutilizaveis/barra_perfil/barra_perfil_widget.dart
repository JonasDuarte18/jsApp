import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'barra_perfil_model.dart';
export 'barra_perfil_model.dart';

class BarraPerfilWidget extends StatefulWidget {
  const BarraPerfilWidget({
    super.key,
    this.usuario,
    this.fotoUser,
    this.funcaoUser,
  });

  final String? usuario;
  final String? fotoUser;
  final String? funcaoUser;

  @override
  State<BarraPerfilWidget> createState() => _BarraPerfilWidgetState();
}

class _BarraPerfilWidgetState extends State<BarraPerfilWidget> {
  late BarraPerfilModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BarraPerfilModel());

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

    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              valueOrDefault<String>(
                widget.usuario,
                'sem user',
              ),
              style: GoogleFonts.getFont(
                'Lato',
                color: FlutterFlowTheme.of(context).primaryText,
                fontWeight: FontWeight.w600,
                fontSize: 16.0,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFC2DAFF),
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  valueOrDefault<String>(
                    widget.funcaoUser,
                    '-',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: const Color(0xFF1C84FF),
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                        useGoogleFonts:
                            GoogleFonts.asMap().containsKey('Readex Pro'),
                      ),
                ),
              ),
            ),
          ].divide(const SizedBox(height: 4.0)),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
          child: Container(
            width: 50.0,
            height: 50.0,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.network(
              widget.fotoUser!,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
