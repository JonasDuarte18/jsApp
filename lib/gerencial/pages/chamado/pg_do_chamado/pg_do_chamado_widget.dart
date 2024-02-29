import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/gerencial/pages/chamado/calendario/calendario_widget.dart';
import '/gerencial/pages/chamado/equipamentos_chamado/equipamentos_chamado_widget.dart';
import '/gerencial/reutilizaveis/barra_perfil/barra_perfil_widget.dart';
import '/gerencial/reutilizaveis/menu_vertical_esquerdo/menu_vertical_esquerdo_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pg_do_chamado_model.dart';
export 'pg_do_chamado_model.dart';

class PgDoChamadoWidget extends StatefulWidget {
  const PgDoChamadoWidget({
    super.key,
    required this.docChamado,
  });

  final ChamadosRecord? docChamado;

  @override
  State<PgDoChamadoWidget> createState() => _PgDoChamadoWidgetState();
}

class _PgDoChamadoWidgetState extends State<PgDoChamadoWidget> {
  late PgDoChamadoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgDoChamadoModel());

    _model.solicitante1FocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 264.0,
                height: 84.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primary,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/JS_SOUSA_PNG_SEM_FUNDO_-_3D.png',
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 200.0,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: wrapWithModel(
                  model: _model.menuVerticalEsquerdoModel,
                  updateCallback: () => setState(() {}),
                  child: const MenuVerticalEsquerdoWidget(),
                ),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              primary: false,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    decoration: const BoxDecoration(),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 10.0, 0.0),
                            child: Container(
                              height: 100.0,
                              decoration: const BoxDecoration(),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Chamado',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              color: const Color(0xFF081437),
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          MouseRegion(
                                            opaque: false,
                                            cursor: MouseCursor.defer ??
                                                MouseCursor.defer,
                                            onEnter: ((event) async {
                                              setState(() => _model
                                                  .mouseRegionHovered1 = true);
                                            }),
                                            onExit: ((event) async {
                                              setState(() => _model
                                                  .mouseRegionHovered1 = false);
                                            }),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                context.safePop();
                                              },
                                              child: Text(
                                                'Chamados',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily,
                                                      color: _model
                                                              .mouseRegionHovered1? const Color(0xFF1C84FF)
                                                          : const Color(0xFF99A1B7),
                                                      fontSize: 12.0,
                                                      useGoogleFonts: GoogleFonts
                                                              .asMap()
                                                          .containsKey(
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily),
                                                    ),
                                              ),
                                            ),
                                          ),
                                          const Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 2.0, 0.0, 0.0),
                                            child: Icon(
                                              Icons.arrow_forward_ios_rounded,
                                              color: Color(0xFF99A1B7),
                                              size: 10.0,
                                            ),
                                          ),
                                          Text(
                                            '#${widget.docChamado?.codChamado.toString()}',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: const Color(0xFF99A1B7),
                                                  fontSize: 12.0,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily),
                                                ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  AuthUserStreamWidget(
                                    builder: (context) => wrapWithModel(
                                      model: _model.barraPerfilModel,
                                      updateCallback: () => setState(() {}),
                                      child: BarraPerfilWidget(
                                        usuario: currentUserDisplayName,
                                        fotoUser: currentUserPhoto,
                                        funcaoUser: valueOrDefault(
                                            currentUserDocument?.funcao, ''),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                    child: StreamBuilder<ChamadosRecord>(
                      stream: ChamadosRecord.getDocument(
                          widget.docChamado!.reference),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: SpinKitDoubleBounce(
                                color: FlutterFlowTheme.of(context).accent1,
                                size: 50.0,
                              ),
                            ),
                          );
                        }
                        final containerChamadosRecord = snapshot.data!;
                        return Material(
                          color: Colors.transparent,
                          elevation: 1.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 10.0, 10.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Nº: ${valueOrDefault<String>(
                                              widget.docChamado?.codChamado
                                                  .toString(),
                                              'CONTATE SUPORTE',
                                            )}',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Lato',
                                                  color: const Color(0xFF081437),
                                                  fontSize: 22.0,
                                                  fontWeight: FontWeight.w600,
                                                  useGoogleFonts:
                                                      GoogleFonts.asMap()
                                                          .containsKey('Lato'),
                                                ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'MANUTENÇÃO PREVENTIVA',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ].divide(const SizedBox(height: 10.0)),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Data Abertura',
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
                                          Text(
                                            dateTimeFormat(
                                              'dd/MM/y',
                                              widget.docChamado!
                                                  .dataHoraChamadoCriado!,
                                              locale:
                                                  FFLocalizations.of(context)
                                                      .languageCode,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Lato',
                                                  color: const Color(0xFF081437),
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.w600,
                                                  useGoogleFonts:
                                                      GoogleFonts.asMap()
                                                          .containsKey('Lato'),
                                                ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Data Fechamento',
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
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              SelectionArea(
                                                  child: Text(
                                                valueOrDefault<String>(
                                                  dateTimeFormat(
                                                    'dd/MM/y',
                                                    containerChamadosRecord
                                                        .dataHoraChamadoFinalizado,
                                                    locale: FFLocalizations.of(
                                                            context)
                                                        .languageCode,
                                                  ),
                                                  '-',
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Lato',
                                                      color: const Color(0xFF081437),
                                                      fontSize: 16.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      useGoogleFonts:
                                                          GoogleFonts.asMap()
                                                              .containsKey(
                                                                  'Lato'),
                                                    ),
                                              )),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 0.0, 0.0),
                                                child: MouseRegion(
                                                  opaque: false,
                                                  cursor: MouseCursor.defer ??
                                                      MouseCursor.defer,
                                                  onEnter: ((event) async {
                                                    setState(() => _model
                                                            .regEditaFechamentoHovered =
                                                        true);
                                                  }),
                                                  onExit: ((event) async {
                                                    setState(() => _model
                                                            .regEditaFechamentoHovered =
                                                        false);
                                                  }),
                                                  child: Builder(
                                                    builder: (context) =>
                                                        InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        await showAlignedDialog(
                                                          barrierColor:
                                                              const Color(0x00FFFFFF),
                                                          context: context,
                                                          isGlobal: false,
                                                          avoidOverflow: false,
                                                          targetAnchor:
                                                              const AlignmentDirectional(
                                                                      0.0, 1.0)
                                                                  .resolve(
                                                                      Directionality.of(
                                                                          context)),
                                                          followerAnchor:
                                                              const AlignmentDirectional(
                                                                      0.0, -1.0)
                                                                  .resolve(
                                                                      Directionality.of(
                                                                          context)),
                                                          builder:
                                                              (dialogContext) {
                                                            return Material(
                                                              color: Colors
                                                                  .transparent,
                                                              child:
                                                                  CalendarioWidget(
                                                                refChamado: widget
                                                                    .docChamado!
                                                                    .reference,
                                                                dataFechamento: widget
                                                                    .docChamado
                                                                    ?.dataHoraChamadoFinalizado,
                                                              ),
                                                            );
                                                          },
                                                        ).then((value) =>
                                                            setState(() {}));
                                                      },
                                                      child: FaIcon(
                                                        FontAwesomeIcons.edit,
                                                        color: _model
                                                                .regEditaFechamentoHovered? const Color(0xFF1C84FF)
                                                            : FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                        size: 18.0,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Técnico Responsável',
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
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              if (!_model.editaTecResp)
                                                Text(
                                                  containerChamadosRecord
                                                      .tecnicoResponsavel,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Lato',
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        useGoogleFonts:
                                                            GoogleFonts.asMap()
                                                                .containsKey(
                                                                    'Lato'),
                                                      ),
                                                ),
                                              if (_model.editaTecResp)
                                                Container(
                                                  width: 130.0,
                                                  height: 30.0,
                                                  decoration: const BoxDecoration(),
                                                  child: StreamBuilder<
                                                      List<FuncionariosRecord>>(
                                                    stream:
                                                        queryFuncionariosRecord(),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 50.0,
                                                            height: 50.0,
                                                            child:
                                                                SpinKitDoubleBounce(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .accent1,
                                                              size: 50.0,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<FuncionariosRecord>
                                                          tecRespFuncionariosRecordList =
                                                          snapshot.data!;
                                                      return FlutterFlowDropDown<
                                                          String>(
                                                        controller: _model
                                                                .tecRespValueController ??=
                                                            FormFieldController<
                                                                String>(
                                                          _model.tecRespValue ??=
                                                              valueOrDefault<
                                                                  String>(
                                                            containerChamadosRecord
                                                                .tecnicoResponsavel,
                                                            '-',
                                                          ),
                                                        ),
                                                        options:
                                                            tecRespFuncionariosRecordList
                                                                .map((e) => e
                                                                    .displayName)
                                                                .toList(),
                                                        onChanged: (val) =>
                                                            setState(() => _model
                                                                    .tecRespValue =
                                                                val),
                                                        width: 200.0,
                                                        height: 40.0,
                                                        searchHintTextStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Lato',
                                                                  color: const Color(
                                                                      0xFF5C5F78),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          'Lato'),
                                                                ),
                                                        searchTextStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Lato',
                                                                  color: const Color(
                                                                      0xFF081437),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          'Lato'),
                                                                ),
                                                        searchHintText: '',
                                                        icon: Icon(
                                                          Icons
                                                              .keyboard_arrow_down_rounded,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: _model
                                                                  .editaTecResp
                                                              ? 24.0
                                                              : 0.0,
                                                        ),
                                                        fillColor: _model
                                                                .editaTecResp
                                                            ? const Color(0xFFF0F0F0)
                                                            : const Color(0x00000000),
                                                        elevation: 2.0,
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderWidth: 2.0,
                                                        borderRadius: 8.0,
                                                        margin:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    4.0,
                                                                    0.0,
                                                                    4.0),
                                                        hidesUnderline: true,
                                                        disabled: !_model
                                                            .editaTecResp,
                                                        isOverButton: true,
                                                        isSearchable: true,
                                                        isMultiSelect: false,
                                                      );
                                                    },
                                                  ),
                                                ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 0.0, 0.0),
                                                child: MouseRegion(
                                                  opaque: false,
                                                  cursor: MouseCursor.defer ??
                                                      MouseCursor.defer,
                                                  onEnter: ((event) async {
                                                    setState(() => _model
                                                            .regEditaTecRespHovered =
                                                        true);
                                                  }),
                                                  onExit: ((event) async {
                                                    setState(() => _model
                                                            .regEditaTecRespHovered =
                                                        false);
                                                  }),
                                                  child: Visibility(
                                                    visible:
                                                        !_model.editaTecResp,
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        setState(() {
                                                          _model.editaTecResp =
                                                              !_model
                                                                  .editaTecResp;
                                                        });
                                                      },
                                                      child: FaIcon(
                                                        FontAwesomeIcons.edit,
                                                        color: _model
                                                                .regEditaTecRespHovered? const Color(0xFF1C8BFF)
                                                            : FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                        size: 18.0,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              if (_model.editaTecResp)
                                                MouseRegion(
                                                  opaque: false,
                                                  cursor: MouseCursor.defer ??
                                                      MouseCursor.defer,
                                                  onEnter: ((event) async {
                                                    setState(() => _model
                                                            .mouseRegionHovered2 =
                                                        true);
                                                  }),
                                                  onExit: ((event) async {
                                                    setState(() => _model
                                                            .mouseRegionHovered2 =
                                                        false);
                                                  }),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(2.0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color: _model
                                                                .mouseRegionHovered2? const Color(0xFFDFFFEA)
                                                            : const Color(0x00000000),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(6.0),
                                                      ),
                                                      child: InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          await widget
                                                              .docChamado!
                                                              .reference
                                                              .update(
                                                                  createChamadosRecordData(
                                                            tecnicoResponsavel:
                                                                _model
                                                                    .tecRespValue,
                                                          ));
                                                          setState(() {
                                                            _model.editaTecResp =
                                                                !_model
                                                                    .editaTecResp;
                                                          });
                                                        },
                                                        child: Icon(
                                                          Icons.check,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .success,
                                                          size: 20.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Solicitante',
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
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              if (_model.editaSolicitante)
                                                Container(
                                                  width: 130.0,
                                                  height: 30.0,
                                                  decoration: const BoxDecoration(),
                                                  child: SizedBox(
                                                    width: 150.0,
                                                    child: TextFormField(
                                                      controller: _model
                                                              .solicitante1Controller ??=
                                                          TextEditingController(
                                                        text:
                                                            containerChamadosRecord
                                                                .solicitante,
                                                      ),
                                                      focusNode: _model
                                                          .solicitante1FocusNode,
                                                      readOnly: !_model
                                                          .editaSolicitante,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMediumFamily,
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize:
                                                                      12.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMediumFamily),
                                                                ),
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium,
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            _model.editaSolicitante ==
                                                                    false
                                                                ? const Color(
                                                                    0x00000000)
                                                                : const Color(
                                                                    0xFFF0F0F0),
                                                        contentPadding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    2.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Lato',
                                                            color: const Color(
                                                                0xFD000000),
                                                            fontSize: 15.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            useGoogleFonts:
                                                                GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        'Lato'),
                                                          ),
                                                      textAlign:
                                                          TextAlign.start,
                                                      cursorColor:
                                                          const Color(0xFF0027A5),
                                                      validator: _model
                                                          .solicitante1ControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                ),
                                              if (!_model.editaSolicitante)
                                                Text(
                                                  containerChamadosRecord
                                                      .solicitante,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Lato',
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        useGoogleFonts:
                                                            GoogleFonts.asMap()
                                                                .containsKey(
                                                                    'Lato'),
                                                      ),
                                                ),
                                              if (!_model.editaSolicitante)
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          10.0, 0.0, 0.0, 0.0),
                                                  child: MouseRegion(
                                                    opaque: false,
                                                    cursor: MouseCursor.defer ??
                                                        MouseCursor.defer,
                                                    onEnter: ((event) async {
                                                      setState(() => _model
                                                              .regEditaSolicitanteHovered =
                                                          true);
                                                    }),
                                                    onExit: ((event) async {
                                                      setState(() => _model
                                                              .regEditaSolicitanteHovered =
                                                          false);
                                                    }),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(4.0),
                                                      child: InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          setState(() {
                                                            _model.editaSolicitante =
                                                                !_model
                                                                    .editaSolicitante;
                                                          });
                                                        },
                                                        child: FaIcon(
                                                          FontAwesomeIcons.edit,
                                                          color: _model
                                                                  .regEditaFechamentoHovered? const Color(
                                                                  0xFF1C84FF)
                                                              : FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                          size: 18.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              if (_model.editaSolicitante)
                                                MouseRegion(
                                                  opaque: false,
                                                  cursor: MouseCursor.defer ??
                                                      MouseCursor.defer,
                                                  onEnter: ((event) async {
                                                    setState(() => _model
                                                            .mouseRegionHovered3 =
                                                        true);
                                                  }),
                                                  onExit: ((event) async {
                                                    setState(() => _model
                                                            .mouseRegionHovered3 =
                                                        false);
                                                  }),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(2.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        await widget.docChamado!
                                                            .reference
                                                            .update(
                                                                createChamadosRecordData(
                                                          solicitante: _model
                                                              .solicitante1Controller
                                                              .text,
                                                        ));
                                                        setState(() {
                                                          _model.editaSolicitante =
                                                              !_model
                                                                  .editaSolicitante;
                                                        });
                                                      },
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: _model
                                                                  .mouseRegionHovered3? const Color(
                                                                  0xFFDFFFEA)
                                                              : const Color(
                                                                  0x00000000),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      6.0),
                                                        ),
                                                        child: Icon(
                                                          Icons.check,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .success,
                                                          size: 20.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ].divide(const SizedBox(width: 10.0)),
                                  ),
                                ),
                                const Divider(
                                  thickness: 0.8,
                                  indent: 10.0,
                                  endIndent: 10.0,
                                  color: Color(0xB3C4C4C4),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 10.0, 10.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Razão Social',
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
                                          Text(
                                            valueOrDefault<String>(
                                              widget.docChamado
                                                  ?.razaoSocialCliente,
                                              'CONTATE SUPORTE',
                                            ),
                                            style: GoogleFonts.getFont(
                                              'Lato',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'CNPJ',
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
                                          Text(
                                            valueOrDefault<String>(
                                              widget.docChamado?.cnpjCliente,
                                              'CONTATE SUPORTE',
                                            ),
                                            style: GoogleFonts.getFont(
                                              'Lato',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Cidade - Estado',
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
                                          Text(
                                            '${valueOrDefault<String>(
                                              widget.docChamado?.cidade,
                                              'CONTATE SUPORTE',
                                            )} - ${valueOrDefault<String>(
                                              widget.docChamado?.uf,
                                              'CONTATE SUPORTE',
                                            )}',
                                            style: GoogleFonts.getFont(
                                              'Lato',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Flexible(
                                        child: Align(
                                          alignment:
                                              const AlignmentDirectional(1.0, 0.0),
                                          child: StreamBuilder<
                                              List<EquipamentosChamadosRecord>>(
                                            stream:
                                                queryEquipamentosChamadosRecord(
                                              parent:
                                                  widget.docChamado?.reference,
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child: SpinKitDoubleBounce(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent1,
                                                      size: 50.0,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<EquipamentosChamadosRecord>
                                                  iconEquipamentosChamadosRecordList =
                                                  snapshot.data!;
                                              return InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  setState(() {
                                                    FFAppState().atual = 0;
                                                  });
                                                  setState(() {
                                                    FFAppState()
                                                        .equipamentosOs = [];
                                                  });
                                                  while (FFAppState().atual <
                                                      iconEquipamentosChamadosRecordList
                                                          .length) {
                                                    setState(() {
                                                      FFAppState()
                                                          .addToEquipamentosOs(
                                                              EquipamentosOsStruct(
                                                        equipamento:
                                                            iconEquipamentosChamadosRecordList[
                                                                    FFAppState()
                                                                        .atual]
                                                                .equipamento,
                                                        nSerie:
                                                            iconEquipamentosChamadosRecordList[
                                                                    FFAppState()
                                                                        .atual]
                                                                .numeroSerie,
                                                        marca:
                                                            iconEquipamentosChamadosRecordList[
                                                                    FFAppState()
                                                                        .atual]
                                                                .marca,
                                                        modelo:
                                                            iconEquipamentosChamadosRecordList[
                                                                    FFAppState()
                                                                        .atual]
                                                                .modelo,
                                                        portAprov:
                                                            iconEquipamentosChamadosRecordList[
                                                                    FFAppState()
                                                                        .atual]
                                                                .protAprov,
                                                        nInmetro:
                                                            iconEquipamentosChamadosRecordList[
                                                                    FFAppState()
                                                                        .atual]
                                                                .numeroInmetro,
                                                        afeIniMax:
                                                            iconEquipamentosChamadosRecordList[
                                                                    FFAppState()
                                                                        .atual]
                                                                .afericaoInicialMax
                                                                .toString(),
                                                        afeIniMin:
                                                            iconEquipamentosChamadosRecordList[
                                                                    FFAppState()
                                                                        .atual]
                                                                .afericaoInicialMin
                                                                .toString(),
                                                        afeFinMax:
                                                            iconEquipamentosChamadosRecordList[
                                                                    FFAppState()
                                                                        .atual]
                                                                .afericaoFinalMax
                                                                .toString(),
                                                        afeFinMin:
                                                            iconEquipamentosChamadosRecordList[
                                                                    FFAppState()
                                                                        .atual]
                                                                .afericaoFinalMin
                                                                .toString(),
                                                        vazao:
                                                            iconEquipamentosChamadosRecordList[
                                                                    FFAppState()
                                                                        .atual]
                                                                .vazao,
                                                        encerranteIni:
                                                            iconEquipamentosChamadosRecordList[
                                                                    FFAppState()
                                                                        .atual]
                                                                .encerranteInicial
                                                                .toString(),
                                                        encerranteFin:
                                                            iconEquipamentosChamadosRecordList[
                                                                    FFAppState()
                                                                        .atual]
                                                                .encerranteFinal
                                                                .toString(),
                                                        volRetirado:
                                                            iconEquipamentosChamadosRecordList[
                                                                    FFAppState()
                                                                        .atual]
                                                                .volumeRetirado
                                                                .toString(),
                                                      ));
                                                    });
                                                    setState(() {
                                                      FFAppState().atualListas =
                                                          0;
                                                    });
                                                    while (FFAppState()
                                                            .atualListas <
                                                        iconEquipamentosChamadosRecordList[
                                                                FFAppState()
                                                                    .atual]
                                                            .lacreRetiradoPainel
                                                            .length) {
                                                      setState(() {
                                                        FFAppState()
                                                            .updateEquipamentosOsAtIndex(
                                                          FFAppState().atual,
                                                          (e) => e
                                                            ..updateLacresRetPainel(
                                                              (e) => e.add(iconEquipamentosChamadosRecordList[
                                                                          FFAppState()
                                                                              .atual]
                                                                      .lacreRetiradoPainel[
                                                                  FFAppState()
                                                                      .atualListas]),
                                                            ),
                                                        );
                                                      });
                                                      setState(() {
                                                        FFAppState()
                                                                .atualListas =
                                                            FFAppState()
                                                                    .atualListas +
                                                                1;
                                                      });
                                                    }
                                                    setState(() {
                                                      FFAppState().atualListas =
                                                          0;
                                                    });
                                                    while (FFAppState()
                                                            .atualListas <
                                                        iconEquipamentosChamadosRecordList[
                                                                FFAppState()
                                                                    .atual]
                                                            .lacreColocadoPainel
                                                            .length) {
                                                      setState(() {
                                                        FFAppState()
                                                            .updateEquipamentosOsAtIndex(
                                                          FFAppState().atual,
                                                          (e) => e
                                                            ..updateLacresColPainel(
                                                              (e) => e.add(iconEquipamentosChamadosRecordList[
                                                                          FFAppState()
                                                                              .atual]
                                                                      .lacreColocadoPainel[
                                                                  FFAppState()
                                                                      .atualListas]),
                                                            ),
                                                        );
                                                      });
                                                      setState(() {
                                                        FFAppState()
                                                                .atualListas =
                                                            FFAppState()
                                                                    .atualListas +
                                                                1;
                                                      });
                                                    }
                                                    setState(() {
                                                      FFAppState().atualListas =
                                                          0;
                                                    });
                                                    while (FFAppState()
                                                            .atualListas <
                                                        iconEquipamentosChamadosRecordList[
                                                                FFAppState()
                                                                    .atual]
                                                            .lacreRetiradoCorpo
                                                            .length) {
                                                      setState(() {
                                                        FFAppState()
                                                            .updateEquipamentosOsAtIndex(
                                                          FFAppState().atual,
                                                          (e) => e
                                                            ..updateLacresRetCorpo(
                                                              (e) => e.add(iconEquipamentosChamadosRecordList[
                                                                          FFAppState()
                                                                              .atual]
                                                                      .lacreRetiradoCorpo[
                                                                  FFAppState()
                                                                      .atualListas]),
                                                            ),
                                                        );
                                                      });
                                                      setState(() {
                                                        FFAppState()
                                                                .atualListas =
                                                            FFAppState()
                                                                    .atualListas +
                                                                1;
                                                      });
                                                    }
                                                    setState(() {
                                                      FFAppState().atualListas =
                                                          0;
                                                    });
                                                    while (FFAppState()
                                                            .atualListas <
                                                        iconEquipamentosChamadosRecordList[
                                                                FFAppState()
                                                                    .atual]
                                                            .lacreColocadoCorpo
                                                            .length) {
                                                      setState(() {
                                                        FFAppState()
                                                            .updateEquipamentosOsAtIndex(
                                                          FFAppState().atual,
                                                          (e) => e
                                                            ..updateLacresColCorpo(
                                                              (e) => e.add(iconEquipamentosChamadosRecordList[
                                                                          FFAppState()
                                                                              .atual]
                                                                      .lacreColocadoCorpo[
                                                                  FFAppState()
                                                                      .atualListas]),
                                                            ),
                                                        );
                                                      });
                                                      setState(() {
                                                        FFAppState()
                                                                .atualListas =
                                                            FFAppState()
                                                                    .atualListas +
                                                                1;
                                                      });
                                                    }
                                                    setState(() {
                                                      FFAppState().atualListas =
                                                          0;
                                                    });
                                                    while (FFAppState()
                                                            .atualListas <
                                                        iconEquipamentosChamadosRecordList[
                                                                FFAppState()
                                                                    .atual]
                                                            .selosRetirados
                                                            .length) {
                                                      setState(() {
                                                        FFAppState()
                                                            .updateEquipamentosOsAtIndex(
                                                          FFAppState().atual,
                                                          (e) => e
                                                            ..updateSelosRet(
                                                              (e) => e.add(iconEquipamentosChamadosRecordList[
                                                                          FFAppState()
                                                                              .atual]
                                                                      .selosRetirados[
                                                                  FFAppState()
                                                                      .atualListas]),
                                                            ),
                                                        );
                                                      });
                                                      setState(() {
                                                        FFAppState()
                                                                .atualListas =
                                                            FFAppState()
                                                                    .atualListas +
                                                                1;
                                                      });
                                                    }
                                                    setState(() {
                                                      FFAppState().atualListas =
                                                          0;
                                                    });
                                                    while (FFAppState()
                                                            .atualListas <
                                                        iconEquipamentosChamadosRecordList[
                                                                FFAppState()
                                                                    .atual]
                                                            .selosColocados
                                                            .length) {
                                                      setState(() {
                                                        FFAppState()
                                                            .updateEquipamentosOsAtIndex(
                                                          FFAppState().atual,
                                                          (e) => e
                                                            ..updateSelosCol(
                                                              (e) => e.add(iconEquipamentosChamadosRecordList[
                                                                          FFAppState()
                                                                              .atual]
                                                                      .selosColocados[
                                                                  FFAppState()
                                                                      .atualListas]),
                                                            ),
                                                        );
                                                      });
                                                      setState(() {
                                                        FFAppState()
                                                                .atualListas =
                                                            FFAppState()
                                                                    .atualListas +
                                                                1;
                                                      });
                                                    }
                                                    setState(() {
                                                      FFAppState().atual =
                                                          FFAppState().atual +
                                                              1;
                                                    });
                                                  }
                                                  await actions.ordemDeServico6(
                                                    widget
                                                        .docChamado!.codChamado,
                                                    dateTimeFormat(
                                                      'dd/MM/y',
                                                      getCurrentTimestamp,
                                                      locale:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .languageCode,
                                                    ),
                                                    'IPIRANGA',
                                                    widget.docChamado!
                                                        .razaoSocialCliente,
                                                    FFAppState()
                                                        .equipamentosOs
                                                        .toList(),
                                                    widget.docChamado!.endereco,
                                                    widget.docChamado!.endereco,
                                                    '${widget.docChamado?.cidade}, ${widget.docChamado?.uf}',
                                                    widget.docChamado!
                                                        .motivoChamado,
                                                    widget.docChamado!
                                                        .assinaturaPosto,
                                                  );
                                                },
                                                child: const Icon(
                                                  Icons.insert_drive_file,
                                                  color: Color(0xFF929292),
                                                  size: 24.0,
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      StreamBuilder<
                                          List<EquipamentosChamadosRecord>>(
                                        stream: queryEquipamentosChamadosRecord(
                                          parent: widget.docChamado?.reference,
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child: SpinKitDoubleBounce(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .accent1,
                                                  size: 50.0,
                                                ),
                                              ),
                                            );
                                          }
                                          List<EquipamentosChamadosRecord>
                                              imageEquipamentosChamadosRecordList =
                                              snapshot.data!;
                                          return ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: SvgPicture.asset(
                                              'assets/images/pdf[1].svg',
                                              width: 25.0,
                                              height: 25.0,
                                              fit: BoxFit.cover,
                                            ),
                                          );
                                        },
                                      ),
                                    ].divide(const SizedBox(width: 20.0)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 1.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 10.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 10.0, 10.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Equipamentos',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Lato',
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.w600,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey('Lato'),
                                          ),
                                    ),
                                    MouseRegion(
                                      opaque: false,
                                      cursor: MouseCursor.defer ??
                                          MouseCursor.defer,
                                      onEnter: ((event) async {
                                        setState(() =>
                                            _model.mouseRegionHovered4 = true);
                                      }),
                                      onExit: ((event) async {
                                        setState(() =>
                                            _model.mouseRegionHovered4 = false);
                                      }),
                                      child: Container(
                                        height: 40.0,
                                        decoration: BoxDecoration(
                                          color: _model.mouseRegionHovered4? const Color(0xFF1C84FF)
                                              : const Color(0xFFE9F3FF),
                                          borderRadius:
                                              BorderRadius.circular(6.0),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.add,
                                              color: _model.mouseRegionHovered4? const Color(0xFFE9F3FF)
                                                  : const Color(0xFF1C84FF),
                                              size: 24.0,
                                            ),
                                            Text(
                                              'Adicionar equipamento',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Lato',
                                                        color: _model
                                                                .mouseRegionHovered4? const Color(0xFFE9F3FF)
                                                            : const Color(0xFF1C84FF),
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.4,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        useGoogleFonts:
                                                            GoogleFonts.asMap()
                                                                .containsKey(
                                                                    'Lato'),
                                                      ),
                                            ),
                                          ]
                                              .divide(const SizedBox(width: 8.0))
                                              .around(const SizedBox(width: 8.0)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              StreamBuilder<List<EquipamentosChamadosRecord>>(
                                stream: queryEquipamentosChamadosRecord(
                                  parent: widget.docChamado?.reference,
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: SpinKitDoubleBounce(
                                          color: FlutterFlowTheme.of(context)
                                              .accent1,
                                          size: 50.0,
                                        ),
                                      ),
                                    );
                                  }
                                  List<EquipamentosChamadosRecord>
                                      listaEquipamentosEquipamentosChamadosRecordList =
                                      snapshot.data!;
                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                        listaEquipamentosEquipamentosChamadosRecordList
                                            .length, (listaEquipamentosIndex) {
                                      final listaEquipamentosEquipamentosChamadosRecord =
                                          listaEquipamentosEquipamentosChamadosRecordList[
                                              listaEquipamentosIndex];
                                      return Stack(
                                        children: [
                                          EquipamentosChamadoWidget(
                                            key: Key(
                                                'Keyztn_${listaEquipamentosIndex}_of_${listaEquipamentosEquipamentosChamadosRecordList.length}'),
                                            parameter1:
                                                listaEquipamentosEquipamentosChamadosRecord
                                                    .equipamento,
                                            parameter2:
                                                listaEquipamentosEquipamentosChamadosRecord
                                                    .afericaoInicialMax,
                                            parameter3:
                                                listaEquipamentosEquipamentosChamadosRecord
                                                    .afericaoInicialMin,
                                            parameter4:
                                                listaEquipamentosEquipamentosChamadosRecord
                                                    .afericaoFinalMax,
                                            parameter5:
                                                listaEquipamentosEquipamentosChamadosRecord
                                                    .afericaoFinalMin,
                                            parameter6:
                                                listaEquipamentosEquipamentosChamadosRecord
                                                    .encerranteInicial,
                                            parameter7:
                                                listaEquipamentosEquipamentosChamadosRecord
                                                    .encerranteFinal,
                                            parameter8:
                                                listaEquipamentosEquipamentosChamadosRecord
                                                    .volumeRetirado,
                                            parameter9:
                                                listaEquipamentosEquipamentosChamadosRecord
                                                    .selosRetirados,
                                            parameter10:
                                                listaEquipamentosEquipamentosChamadosRecord
                                                    .selosColocados,
                                            parameter11:
                                                listaEquipamentosEquipamentosChamadosRecord
                                                    .lacreRetiradoPainel,
                                            parameter12:
                                                listaEquipamentosEquipamentosChamadosRecord
                                                    .lacreColocadoPainel,
                                            parameter13:
                                                listaEquipamentosEquipamentosChamadosRecord
                                                    .lacreRetiradoCorpo,
                                            parameter14:
                                                listaEquipamentosEquipamentosChamadosRecord
                                                    .lacreColocadoCorpo,
                                            parameter15:
                                                listaEquipamentosEquipamentosChamadosRecord
                                                    .servico,
                                            parameter16:
                                                listaEquipamentosEquipamentosChamadosRecord
                                                    .produtos,
                                          ),
                                        ],
                                      );
                                    }),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
