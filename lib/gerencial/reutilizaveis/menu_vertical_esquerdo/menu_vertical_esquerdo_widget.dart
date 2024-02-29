import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'menu_vertical_esquerdo_model.dart';
export 'menu_vertical_esquerdo_model.dart';

class MenuVerticalEsquerdoWidget extends StatefulWidget {
  const MenuVerticalEsquerdoWidget({super.key});

  @override
  State<MenuVerticalEsquerdoWidget> createState() =>
      _MenuVerticalEsquerdoWidgetState();
}

class _MenuVerticalEsquerdoWidgetState extends State<MenuVerticalEsquerdoWidget>
    with TickerProviderStateMixin {
  late MenuVerticalEsquerdoModel _model;

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
    _model = createModel(context, () => MenuVerticalEsquerdoModel());

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
      width: 264.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primary,
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(30.0, 30.0, 24.0, 30.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              child: MouseRegion(
                opaque: false,
                cursor: MouseCursor.defer ?? MouseCursor.defer,
                onEnter: ((event) async {
                  setState(() => _model.regiaoChamadoHovered1 = true);
                }),
                onExit: ((event) async {
                  setState(() => _model.regiaoChamadoHovered1 = false);
                }),
                child: Container(
                  height: 40.0,
                  decoration: const BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.business,
                              color: _model.regiaoChamadoHovered1? Colors.white
                                  : FlutterFlowTheme.of(context).accent1,
                              size: 24.0,
                            ),
                            Text(
                              'Empresa',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    color: _model.regiaoChamadoHovered1? Colors.white
                                        : FlutterFlowTheme.of(context).accent1,
                                    fontSize: 16.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                            ),
                          ]
                              .divide(const SizedBox(width: 6.0))
                              .around(const SizedBox(width: 6.0)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Flexible(
              child: MouseRegion(
                opaque: false,
                cursor: MouseCursor.defer ?? MouseCursor.defer,
                onEnter: ((event) async {
                  setState(() => _model.regiaoChamadoHovered2 = true);
                }),
                onExit: ((event) async {
                  setState(() => _model.regiaoChamadoHovered2 = false);
                }),
                child: Container(
                  height: 40.0,
                  decoration: const BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.bar_chart,
                              color: _model.regiaoChamadoHovered2? Colors.white
                                  : FlutterFlowTheme.of(context).accent1,
                              size: 24.0,
                            ),
                            Text(
                              'Dashboard',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    color: _model.regiaoChamadoHovered2? Colors.white
                                        : FlutterFlowTheme.of(context).accent1,
                                    fontSize: 16.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                            ),
                          ]
                              .divide(const SizedBox(width: 6.0))
                              .around(const SizedBox(width: 6.0)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Flexible(
              child: MouseRegion(
                opaque: false,
                cursor: MouseCursor.defer ?? MouseCursor.defer,
                onEnter: ((event) async {
                  setState(() => _model.regiaoChamadoHovered3 = true);
                }),
                onExit: ((event) async {
                  setState(() => _model.regiaoChamadoHovered3 = false);
                }),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('PgChamados');
                  },
                  child: Container(
                    height: 40.0,
                    decoration: const BoxDecoration(),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.call_merge,
                                color: _model.regiaoChamadoHovered3? Colors.white
                                    : FlutterFlowTheme.of(context).accent1,
                                size: 24.0,
                              ),
                              Text(
                                'Chamados',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: _model.regiaoChamadoHovered3? Colors.white
                                          : FlutterFlowTheme.of(context)
                                              .accent1,
                                      fontSize: 16.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                              ),
                            ]
                                .divide(const SizedBox(width: 6.0))
                                .around(const SizedBox(width: 6.0)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Flexible(
              child: MouseRegion(
                opaque: false,
                cursor: MouseCursor.defer ?? MouseCursor.defer,
                onEnter: ((event) async {
                  setState(() => _model.regiaoCadastroHovered = true);
                }),
                onExit: ((event) async {
                  setState(() => _model.regiaoCadastroHovered = false);
                }),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    if (_model.mostrarSubMenu == 'mostraCadastro') {
                      if (animationsMap['iconOnActionTriggerAnimation'] !=
                          null) {
                        animationsMap['iconOnActionTriggerAnimation']!
                            .controller
                            .reverse();
                      }
                      setState(() {
                        _model.mostrarSubMenu = '';
                      });
                    } else {
                      if (animationsMap['iconOnActionTriggerAnimation'] !=
                          null) {
                        animationsMap['iconOnActionTriggerAnimation']!
                            .controller
                            .forward(from: 0.0);
                      }
                      setState(() {
                        _model.mostrarSubMenu = 'mostraCadastro';
                      });
                    }
                  },
                  child: Container(
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primary,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.person,
                                color: () {
                                  if (_model.mostrarSubMenu ==
                                      'mostraCadastro') {
                                    return Colors.white;
                                  } else if (_model.regiaoCadastroHovered) {
                                    return Colors.white;
                                  } else {
                                    return FlutterFlowTheme.of(context).accent1;
                                  }
                                }(),
                                size: 24.0,
                              ),
                              Text(
                                'Cadastro',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: () {
                                        if (_model.mostrarSubMenu ==
                                            'mostraCadastro') {
                                          return Colors.white;
                                        } else if (_model
                                            .regiaoCadastroHovered) {
                                          return Colors.white;
                                        } else {
                                          return FlutterFlowTheme.of(context)
                                              .accent1;
                                        }
                                      }(),
                                      fontSize: 16.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                              ),
                            ]
                                .divide(const SizedBox(width: 6.0))
                                .around(const SizedBox(width: 6.0)),
                          ),
                        ),

                        // Caso fincione a  "animation" se torna desnecessário usar condições de visibilidade
                        Icon(
                          Icons.arrow_right,
                          color: _model.regiaoCadastroHovered? Colors.white
                              : FlutterFlowTheme.of(context).accent1,
                          size: 26.0,
                        ).animateOnActionTrigger(
                          animationsMap['iconOnActionTriggerAnimation']!,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            if (_model.mostrarSubMenu == 'mostraCadastro')
              Container(
                decoration: const BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MouseRegion(
                      opaque: false,
                      cursor: MouseCursor.defer ?? MouseCursor.defer,
                      onEnter: ((event) async {
                        setState(() => _model.regiaoClientesHovered = true);
                      }),
                      onExit: ((event) async {
                        setState(() => _model.regiaoClientesHovered = false);
                      }),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('pgCliente');
                        },
                        child: Container(
                          height: 40.0,
                          decoration: const BoxDecoration(),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 0.0, 0.0),
                                child: Icon(
                                  Icons.circle_sharp,
                                  color: _model.regiaoClientesHovered? Colors.white
                                      : FlutterFlowTheme.of(context).accent1,
                                  size: 8.0,
                                ),
                              ),
                              Text(
                                'Clientes',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: _model.regiaoClientesHovered? Colors.white
                                          : FlutterFlowTheme.of(context)
                                              .accent1,
                                      fontSize: 16.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                              ),
                            ].divide(const SizedBox(width: 10.0)),
                          ),
                        ),
                      ),
                    ),
                    MouseRegion(
                      opaque: false,
                      cursor: MouseCursor.defer ?? MouseCursor.defer,
                      onEnter: ((event) async {
                        setState(() => _model.regiaoFuncionariosHovered = true);
                      }),
                      onExit: ((event) async {
                        setState(
                            () => _model.regiaoFuncionariosHovered = false);
                      }),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('pgFuncionario');
                        },
                        child: Container(
                          height: 40.0,
                          decoration: const BoxDecoration(),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 0.0, 0.0),
                                child: Icon(
                                  Icons.circle_sharp,
                                  color: _model.regiaoFuncionariosHovered? Colors.white
                                      : FlutterFlowTheme.of(context).accent1,
                                  size: 8.0,
                                ),
                              ),
                              Text(
                                'Funcionários',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: _model.regiaoFuncionariosHovered? Colors.white
                                          : FlutterFlowTheme.of(context)
                                              .accent1,
                                      fontSize: 16.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                              ),
                            ].divide(const SizedBox(width: 10.0)),
                          ),
                        ),
                      ),
                    ),
                    MouseRegion(
                      opaque: false,
                      cursor: MouseCursor.defer ?? MouseCursor.defer,
                      onEnter: ((event) async {
                        setState(() => _model.regiaoProdutosHovered = true);
                      }),
                      onExit: ((event) async {
                        setState(() => _model.regiaoProdutosHovered = false);
                      }),
                      child: Container(
                        height: 40.0,
                        decoration: const BoxDecoration(),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed('PgProdutos');
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 0.0, 0.0),
                                child: Icon(
                                  Icons.circle_sharp,
                                  color: _model.regiaoProdutosHovered? Colors.white
                                      : FlutterFlowTheme.of(context).accent1,
                                  size: 8.0,
                                ),
                              ),
                              Text(
                                'Produtos',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: _model.regiaoProdutosHovered? Colors.white
                                          : FlutterFlowTheme.of(context)
                                              .accent1,
                                      fontSize: 16.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                              ),
                            ].divide(const SizedBox(width: 10.0)),
                          ),
                        ),
                      ),
                    ),
                    MouseRegion(
                      opaque: false,
                      cursor: MouseCursor.defer ?? MouseCursor.defer,
                      onEnter: ((event) async {
                        setState(() => _model.regiaoSeloLacreHovered = true);
                      }),
                      onExit: ((event) async {
                        setState(() => _model.regiaoSeloLacreHovered = false);
                      }),
                      child: Container(
                        height: 40.0,
                        decoration: const BoxDecoration(),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed('pgSeloLacre');
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 0.0, 0.0),
                                child: Icon(
                                  Icons.circle_sharp,
                                  color: _model.regiaoSeloLacreHovered? Colors.white
                                      : FlutterFlowTheme.of(context).accent1,
                                  size: 8.0,
                                ),
                              ),
                              Text(
                                'Selos e Lacres',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: _model.regiaoSeloLacreHovered? Colors.white
                                          : FlutterFlowTheme.of(context)
                                              .accent1,
                                      fontSize: 16.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                              ),
                            ].divide(const SizedBox(width: 10.0)),
                          ),
                        ),
                      ),
                    ),
                    MouseRegion(
                      opaque: false,
                      cursor: MouseCursor.defer ?? MouseCursor.defer,
                      onEnter: ((event) async {
                        setState(() => _model.regiaoServicosHovered = true);
                      }),
                      onExit: ((event) async {
                        setState(() => _model.regiaoServicosHovered = false);
                      }),
                      child: Container(
                        height: 40.0,
                        decoration: const BoxDecoration(),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed('PgServicos');
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 0.0, 0.0),
                                child: Icon(
                                  Icons.circle_sharp,
                                  color: FlutterFlowTheme.of(context).accent1,
                                  size: 8.0,
                                ),
                              ),
                              Text(
                                'Serviços',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: _model.regiaoServicosHovered? Colors.white
                                          : FlutterFlowTheme.of(context)
                                              .accent1,
                                      fontSize: 16.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                              ),
                            ].divide(const SizedBox(width: 10.0)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            if (_model.mostrarSubMenu == 'mostraFinanceiro')
              Container(
                decoration: const BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MouseRegion(
                      opaque: false,
                      cursor: MouseCursor.defer ?? MouseCursor.defer,
                      onEnter: ((event) async {
                        setState(() => _model.regiaoTitulosHovered = true);
                      }),
                      onExit: ((event) async {
                        setState(() => _model.regiaoTitulosHovered = false);
                      }),
                      child: Container(
                        height: 40.0,
                        decoration: const BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 0.0, 0.0),
                              child: Icon(
                                Icons.circle_sharp,
                                color: _model.regiaoTitulosHovered? Colors.white
                                    : FlutterFlowTheme.of(context).accent1,
                                size: 8.0,
                              ),
                            ),
                            Text(
                              'Títulos',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    color: _model.regiaoTitulosHovered? Colors.white
                                        : FlutterFlowTheme.of(context).accent1,
                                    fontSize: 16.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                            ),
                          ].divide(const SizedBox(width: 10.0)),
                        ),
                      ),
                    ),
                    MouseRegion(
                      opaque: false,
                      cursor: MouseCursor.defer ?? MouseCursor.defer,
                      onEnter: ((event) async {
                        setState(() => _model.regiaoContasHovered = true);
                      }),
                      onExit: ((event) async {
                        setState(() => _model.regiaoContasHovered = false);
                      }),
                      child: Container(
                        height: 40.0,
                        decoration: const BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 0.0, 0.0),
                              child: Icon(
                                Icons.circle_sharp,
                                color: _model.regiaoContasHovered? Colors.white
                                    : FlutterFlowTheme.of(context).accent1,
                                size: 8.0,
                              ),
                            ),
                            Text(
                              'Contas',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    color: _model.regiaoContasHovered? Colors.white
                                        : FlutterFlowTheme.of(context).accent1,
                                    fontSize: 16.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                            ),
                          ].divide(const SizedBox(width: 10.0)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            if (_model.mostrarSubMenu == 'mostraFiscal')
              Container(
                decoration: const BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MouseRegion(
                      opaque: false,
                      cursor: MouseCursor.defer ?? MouseCursor.defer,
                      onEnter: ((event) async {
                        setState(() => _model.regiaoNFeHovered = true);
                      }),
                      onExit: ((event) async {
                        setState(() => _model.regiaoNFeHovered = false);
                      }),
                      child: Container(
                        height: 40.0,
                        decoration: const BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 0.0, 0.0),
                              child: Icon(
                                Icons.circle_sharp,
                                color: _model.regiaoNFeHovered? Colors.white
                                    : FlutterFlowTheme.of(context).accent1,
                                size: 8.0,
                              ),
                            ),
                            Text(
                              'NFe',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    color: _model.regiaoNFeHovered? Colors.white
                                        : FlutterFlowTheme.of(context).accent1,
                                    fontSize: 16.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                            ),
                          ].divide(const SizedBox(width: 10.0)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
