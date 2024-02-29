import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'equipamentos_chamado_model.dart';
export 'equipamentos_chamado_model.dart';

class EquipamentosChamadoWidget extends StatefulWidget {
  const EquipamentosChamadoWidget({
    super.key,
    this.parameter1,
    this.parameter2,
    this.parameter3,
    this.parameter4,
    this.parameter5,
    this.parameter6,
    this.parameter7,
    this.parameter8,
    this.parameter9,
    this.parameter10,
    this.parameter11,
    this.parameter12,
    this.parameter13,
    this.parameter14,
    this.parameter15,
    this.parameter16,
  });

  final String? parameter1;
  final int? parameter2;
  final int? parameter3;
  final int? parameter4;
  final int? parameter5;
  final int? parameter6;
  final int? parameter7;
  final int? parameter8;
  final List<String>? parameter9;
  final List<String>? parameter10;
  final List<String>? parameter11;
  final List<String>? parameter12;
  final List<String>? parameter13;
  final List<String>? parameter14;
  final List<String>? parameter15;
  final List<String>? parameter16;

  @override
  State<EquipamentosChamadoWidget> createState() =>
      _EquipamentosChamadoWidgetState();
}

class _EquipamentosChamadoWidgetState extends State<EquipamentosChamadoWidget>
    with TickerProviderStateMixin {
  late EquipamentosChamadoModel _model;

  final animationsMap = {
    'iconOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        RotateEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 0.25,
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EquipamentosChamadoModel());

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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

    return Container(
      decoration: const BoxDecoration(),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          if (_model.vizualizaConteudo == true) {
                            if (animationsMap['iconOnActionTriggerAnimation'] !=
                                null) {
                              animationsMap['iconOnActionTriggerAnimation']!
                                  .controller
                                  .forward()
                                  .whenComplete(animationsMap[
                                          'iconOnActionTriggerAnimation']!
                                      .controller
                                      .reverse);
                            }
                            setState(() {
                              _model.vizualizaConteudo = false;
                            });
                          } else {
                            if (animationsMap['iconOnActionTriggerAnimation'] !=
                                null) {
                              animationsMap['iconOnActionTriggerAnimation']!
                                  .controller
                                  .forward();
                            }
                            setState(() {
                              _model.vizualizaConteudo = true;
                            });
                          }
                        },
                        child: const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Color(0xFF929292),
                          size: 18.0,
                        ),
                      ).animateOnActionTrigger(
                        animationsMap['iconOnActionTriggerAnimation']!,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.parameter1!,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Lato',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600,
                                  useGoogleFonts:
                                      GoogleFonts.asMap().containsKey('Lato'),
                                ),
                          ),
                        ],
                      ),
                    ].divide(const SizedBox(width: 4.0)),
                  ),
                ),
                const Icon(
                  Icons.edit,
                  color: Color(0xFF929292),
                  size: 18.0,
                ),
              ],
            ),
            if (_model.vizualizaConteudo)
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  textScaleFactor:
                                      MediaQuery.of(context).textScaleFactor,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Aferição inicial MAX: ',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Lato',
                                              color: const Color(0xFF929292),
                                              fontSize: 15.0,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey('Lato'),
                                            ),
                                      ),
                                      TextSpan(
                                        text: widget.parameter2!.toString(),
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )
                                    ],
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Lato',
                                          color: const Color(0xFF929292),
                                          fontSize: 15.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey('Lato'),
                                        ),
                                  ),
                                ),
                                RichText(
                                  textScaleFactor:
                                      MediaQuery.of(context).textScaleFactor,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Aferição inicial MIN: ',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Lato',
                                              color: const Color(0xFF929292),
                                              fontSize: 15.0,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey('Lato'),
                                            ),
                                      ),
                                      TextSpan(
                                        text: widget.parameter3!.toString(),
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )
                                    ],
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Lato',
                                          color: const Color(0xFF929292),
                                          fontSize: 15.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey('Lato'),
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  textScaleFactor:
                                      MediaQuery.of(context).textScaleFactor,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Aferição final MAX: ',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Lato',
                                              color: const Color(0xFF929292),
                                              fontSize: 15.0,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey('Lato'),
                                            ),
                                      ),
                                      TextSpan(
                                        text: widget.parameter4!.toString(),
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )
                                    ],
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Lato',
                                          color: const Color(0xFF929292),
                                          fontSize: 15.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey('Lato'),
                                        ),
                                  ),
                                ),
                                RichText(
                                  textScaleFactor:
                                      MediaQuery.of(context).textScaleFactor,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Aferição final MIN: ',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Lato',
                                              color: const Color(0xFF929292),
                                              fontSize: 15.0,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey('Lato'),
                                            ),
                                      ),
                                      TextSpan(
                                        text: widget.parameter5!.toString(),
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )
                                    ],
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Lato',
                                          color: const Color(0xFF929292),
                                          fontSize: 15.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey('Lato'),
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  textScaleFactor:
                                      MediaQuery.of(context).textScaleFactor,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Totalizador inicial: ',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Lato',
                                              color: const Color(0xFF929292),
                                              fontSize: 15.0,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey('Lato'),
                                            ),
                                      ),
                                      TextSpan(
                                        text: widget.parameter6!.toString(),
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )
                                    ],
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Lato',
                                          color: const Color(0xFF929292),
                                          fontSize: 15.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey('Lato'),
                                        ),
                                  ),
                                ),
                                RichText(
                                  textScaleFactor:
                                      MediaQuery.of(context).textScaleFactor,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Totalizador final: ',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Lato',
                                              color: const Color(0xFF929292),
                                              fontSize: 15.0,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey('Lato'),
                                            ),
                                      ),
                                      TextSpan(
                                        text: widget.parameter7!.toString(),
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )
                                    ],
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Lato',
                                          color: const Color(0xFF929292),
                                          fontSize: 15.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey('Lato'),
                                        ),
                                  ),
                                ),
                                RichText(
                                  textScaleFactor:
                                      MediaQuery.of(context).textScaleFactor,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Volume retirado: ',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Lato',
                                              color: const Color(0xFF929292),
                                              fontSize: 15.0,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey('Lato'),
                                            ),
                                      ),
                                      TextSpan(
                                        text: widget.parameter8!.toString(),
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )
                                    ],
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Lato',
                                          color: const Color(0xFF929292),
                                          fontSize: 15.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey('Lato'),
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                    textScaleFactor:
                                        MediaQuery.of(context).textScaleFactor,
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Selos retirados:',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Lato',
                                                color: const Color(0xFF929292),
                                                fontSize: 15.0,
                                                useGoogleFonts:
                                                    GoogleFonts.asMap()
                                                        .containsKey('Lato'),
                                              ),
                                        )
                                      ],
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Lato',
                                            color: const Color(0xFF929292),
                                            fontSize: 15.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey('Lato'),
                                          ),
                                    ),
                                  ),
                                  Builder(
                                    builder: (context) {
                                      final selosRetirados =
                                          widget.parameter9?.toList() ?? [];
                                      return Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children:
                                            List.generate(selosRetirados.length,
                                                (selosRetiradosIndex) {
                                          final selosRetiradosItem =
                                              selosRetirados[
                                                  selosRetiradosIndex];
                                          return Text(
                                            selosRetiradosItem,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                          );
                                        }),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                    textScaleFactor:
                                        MediaQuery.of(context).textScaleFactor,
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Selos colocados:',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Lato',
                                                color: const Color(0xFF929292),
                                                fontSize: 15.0,
                                                useGoogleFonts:
                                                    GoogleFonts.asMap()
                                                        .containsKey('Lato'),
                                              ),
                                        )
                                      ],
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Lato',
                                            color: const Color(0xFF929292),
                                            fontSize: 15.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey('Lato'),
                                          ),
                                    ),
                                  ),
                                  Builder(
                                    builder: (context) {
                                      final selosColacados =
                                          widget.parameter10?.toList() ?? [];
                                      return Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children:
                                            List.generate(selosColacados.length,
                                                (selosColacadosIndex) {
                                          final selosColacadosItem =
                                              selosColacados[
                                                  selosColacadosIndex];
                                          return Text(
                                            selosColacadosItem,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                          );
                                        }),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                    textScaleFactor:
                                        MediaQuery.of(context).textScaleFactor,
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Lacres retirados (PAINEL):',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Lato',
                                                color: const Color(0xFF929292),
                                                fontSize: 15.0,
                                                useGoogleFonts:
                                                    GoogleFonts.asMap()
                                                        .containsKey('Lato'),
                                              ),
                                        )
                                      ],
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Lato',
                                            color: const Color(0xFF929292),
                                            fontSize: 15.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey('Lato'),
                                          ),
                                    ),
                                  ),
                                  Builder(
                                    builder: (context) {
                                      final lacresRetPai =
                                          widget.parameter11?.toList() ?? [];
                                      return Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children:
                                            List.generate(lacresRetPai.length,
                                                (lacresRetPaiIndex) {
                                          final lacresRetPaiItem =
                                              lacresRetPai[lacresRetPaiIndex];
                                          return Text(
                                            lacresRetPaiItem,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                          );
                                        }),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                    textScaleFactor:
                                        MediaQuery.of(context).textScaleFactor,
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Lacres colocados (PAINEL):',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Lato',
                                                color: const Color(0xFF929292),
                                                fontSize: 15.0,
                                                useGoogleFonts:
                                                    GoogleFonts.asMap()
                                                        .containsKey('Lato'),
                                              ),
                                        )
                                      ],
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Lato',
                                            color: const Color(0xFF929292),
                                            fontSize: 15.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey('Lato'),
                                          ),
                                    ),
                                  ),
                                  Builder(
                                    builder: (context) {
                                      final lacresColPai =
                                          widget.parameter12?.toList() ?? [];
                                      return Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children:
                                            List.generate(lacresColPai.length,
                                                (lacresColPaiIndex) {
                                          final lacresColPaiItem =
                                              lacresColPai[lacresColPaiIndex];
                                          return Text(
                                            lacresColPaiItem,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                          );
                                        }),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  textScaleFactor:
                                      MediaQuery.of(context).textScaleFactor,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Lacres retirados (CORPO):',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Lato',
                                              color: const Color(0xFF929292),
                                              fontSize: 15.0,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey('Lato'),
                                            ),
                                      )
                                    ],
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Lato',
                                          color: const Color(0xFF929292),
                                          fontSize: 15.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey('Lato'),
                                        ),
                                  ),
                                ),
                                Builder(
                                  builder: (context) {
                                    final lacresRetCor =
                                        widget.parameter13?.toList() ?? [];
                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children:
                                          List.generate(lacresRetCor.length,
                                              (lacresRetCorIndex) {
                                        final lacresRetCorItem =
                                            lacresRetCor[lacresRetCorIndex];
                                        return Text(
                                          lacresRetCorItem,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        );
                                      }),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  textScaleFactor:
                                      MediaQuery.of(context).textScaleFactor,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Lacres colocados (CORPO):',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Lato',
                                              color: const Color(0xFF929292),
                                              fontSize: 15.0,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey('Lato'),
                                            ),
                                      )
                                    ],
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Lato',
                                          color: const Color(0xFF929292),
                                          fontSize: 15.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey('Lato'),
                                        ),
                                  ),
                                ),
                                Builder(
                                  builder: (context) {
                                    final lacresColCor =
                                        widget.parameter14?.toList() ?? [];
                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children:
                                          List.generate(lacresColCor.length,
                                              (lacresColCorIndex) {
                                        final lacresColCorItem =
                                            lacresColCor[lacresColCorIndex];
                                        return Text(
                                          lacresColCorItem,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        );
                                      }),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  textScaleFactor:
                                      MediaQuery.of(context).textScaleFactor,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Serviços:',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Lato',
                                              color: const Color(0xFF929292),
                                              fontSize: 15.0,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey('Lato'),
                                            ),
                                      )
                                    ],
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Lato',
                                          color: const Color(0xFF929292),
                                          fontSize: 15.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey('Lato'),
                                        ),
                                  ),
                                ),
                                Builder(
                                  builder: (context) {
                                    final servicos =
                                        widget.parameter15?.toList() ?? [];
                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: List.generate(servicos.length,
                                          (servicosIndex) {
                                        final servicosItem =
                                            servicos[servicosIndex];
                                        return Text(
                                          servicosItem,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        );
                                      }),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  textScaleFactor:
                                      MediaQuery.of(context).textScaleFactor,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Materiais:',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Lato',
                                              color: const Color(0xFF929292),
                                              fontSize: 15.0,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey('Lato'),
                                            ),
                                      )
                                    ],
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Lato',
                                          color: const Color(0xFF929292),
                                          fontSize: 15.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey('Lato'),
                                        ),
                                  ),
                                ),
                                Builder(
                                  builder: (context) {
                                    final material =
                                        widget.parameter16?.toList() ?? [];
                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: List.generate(material.length,
                                          (materialIndex) {
                                        final materialItem =
                                            material[materialIndex];
                                        return Text(
                                          materialItem,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        );
                                      }),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ].divide(const SizedBox(height: 10.0)),
                  ),
                ),
              ),
            StyledDivider(
              thickness: 1.0,
              indent: 8.0,
              endIndent: 8.0,
              color: FlutterFlowTheme.of(context).accent1,
              lineStyle: DividerLineStyle.dashed,
            ),
          ],
        ),
      ),
    );
  }
}
