import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:signature/signature.dart';
import 'tela_assinatura_model.dart';
export 'tela_assinatura_model.dart';

class TelaAssinaturaWidget extends StatefulWidget {
  const TelaAssinaturaWidget({
    super.key,
    required this.refchamado,
  });

  final DocumentReference? refchamado;

  @override
  State<TelaAssinaturaWidget> createState() => _TelaAssinaturaWidgetState();
}

class _TelaAssinaturaWidgetState extends State<TelaAssinaturaWidget>
    with TickerProviderStateMixin {
  late TelaAssinaturaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        ScaleEffect(
          curve: Curves.bounceOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: const Offset(0.6, 0.6),
          end: const Offset(1.0, 1.0),
        ),
      ],
    ),
    'columnOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 400.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 400.ms,
          begin: const Offset(0.0, 60.0),
          end: const Offset(0.0, 0.0),
        ),
        TiltEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 400.ms,
          begin: const Offset(-0.349, 0),
          end: const Offset(0, 0),
        ),
      ],
    ),
    'textOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 100.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 400.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 400.ms,
          begin: const Offset(0.0, 30.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 150.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 150.ms,
          duration: 400.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 150.ms,
          duration: 400.ms,
          begin: const Offset(0.0, 30.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 150.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 150.ms,
          duration: 400.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 150.ms,
          duration: 400.ms,
          begin: const Offset(0.0, 30.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TelaAssinaturaModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

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

    return StreamBuilder<ChamadosRecord>(
      stream: ChamadosRecord.getDocument(widget.refchamado!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: SpinKitDoubleBounce(
                  color: FlutterFlowTheme.of(context).accent1,
                  size: 50.0,
                ),
              ),
            ),
          );
        }
        final telaAssinaturaChamadosRecord = snapshot.data!;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SafeArea(
              top: true,
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 300.0,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFFF6600),
                              Color(0xFFFF6600),
                              Color(0xFFEE8B60)
                            ],
                            stops: [0.0, 0.5, 1.0],
                            begin: AlignmentDirectional(-1.0, -1.0),
                            end: AlignmentDirectional(1.0, 1.0),
                          ),
                        ),
                        child: Container(
                          width: 100.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                const Color(0x00FFFFFF),
                                FlutterFlowTheme.of(context).primaryBackground
                              ],
                              stops: const [0.0, 1.0],
                              begin: const AlignmentDirectional(0.0, -1.0),
                              end: const AlignmentDirectional(0, 1.0),
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 30.0, 0.0, 0.0),
                                child: Container(
                                  width: 220.0,
                                  height: 140.0,
                                  decoration: BoxDecoration(
                                    color: const Color(0xCCFFFFFF),
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        5.0, 0.0, 5.0, 0.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/JS_SOUSA_PNG_SEM_FUNDO_(1).png',
                                        width: 300.0,
                                        height: 300.0,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'containerOnPageLoadAnimation']!),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 16.0, 16.0, 0.0),
                                    child: RichText(
                                      textScaleFactor: MediaQuery.of(context)
                                          .textScaleFactor,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Chamado Nº: ',
                                            style: GoogleFonts.getFont(
                                              'Lato',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20.0,
                                            ),
                                          ),
                                          TextSpan(
                                            text: telaAssinaturaChamadosRecord
                                                .codChamado
                                                .toString(),
                                            style: GoogleFonts.getFont(
                                              'Lato',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20.0,
                                            ),
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: const Color(0xFF57636C),
                                              fontSize: 16.0,
                                              letterSpacing: 0.3,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey(
                                                          'Plus Jakarta Sans'),
                                            ),
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 16.0, 16.0, 16.0),
                                    child: Text(
                                      'ATESTO QUE, NA PRESENTE VISITA, O TÉCNICO DEIXOU A(S)  BOMBA(S) EM QUE EXECUTOU O SERVIÇO EM PERFEITAS CONDIÇÕES E DE ACORDO COM O PLANO DE SELAGEM EXIGIDO PELO INMETRO.',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: const Color(0xFF57636C),
                                            fontSize: 16.0,
                                            letterSpacing: 0.3,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    'Plus Jakarta Sans'),
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 12.0, 0.0, 0.0),
                                    child: Text(
                                      'Assinatura do responsável',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: const Color(0xFF101213),
                                            fontSize: 24.0,
                                            fontWeight: FontWeight.bold,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    'Plus Jakarta Sans'),
                                          ),
                                    ).animateOnPageLoad(animationsMap[
                                        'textOnPageLoadAnimation']!),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 14.0),
                                        child: SizedBox(
                                          width: 180.0,
                                          child: TextFormField(
                                            controller: _model.textController1,
                                            focusNode:
                                                _model.textFieldFocusNode1,
                                            autofocus: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMediumFamily,
                                                    color: const Color(0xFF081437),
                                                    fontSize: 14.0,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: GoogleFonts
                                                            .asMap()
                                                        .containsKey(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMediumFamily),
                                                  ),
                                              hintText: 'NOME DO ASSINANTE',
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium,
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0xFFFF7A19),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                              filled: true,
                                              fillColor: const Color(0xFFEFEFEF),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.w500,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily),
                                                ),
                                            textAlign: TextAlign.center,
                                            validator: _model
                                                .textController1Validator
                                                .asValidator(context),
                                          ),
                                        ).animateOnPageLoad(animationsMap[
                                            'textFieldOnPageLoadAnimation1']!),
                                      ),
                                      Flexible(
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 14.0),
                                          child: SizedBox(
                                            width: 150.0,
                                            child: TextFormField(
                                              controller:
                                                  _model.textController2,
                                              focusNode:
                                                  _model.textFieldFocusNode2,
                                              autofocus: true,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMediumFamily,
                                                          color:
                                                              const Color(0xFF081437),
                                                          fontSize: 14.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMediumFamily),
                                                        ),
                                                hintText: 'CPF DO ASSINANTE',
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0xFFFF7A19),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4.0),
                                                ),
                                                filled: true,
                                                fillColor: const Color(0xFFEFEFEF),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        fontSize: 18.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                              textAlign: TextAlign.center,
                                              keyboardType:
                                                  TextInputType.number,
                                              validator: _model
                                                  .textController2Validator
                                                  .asValidator(context),
                                              inputFormatters: [
                                                _model.textFieldMask2
                                              ],
                                            ),
                                          ).animateOnPageLoad(animationsMap[
                                              'textFieldOnPageLoadAnimation2']!),
                                        ),
                                      ),
                                    ].divide(const SizedBox(width: 20.0)),
                                  ),
                                  Container(
                                    height: 500.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(6.0),
                                      border: Border.all(
                                        color: const Color(0xFFFF7A19),
                                        width: 4.0,
                                      ),
                                    ),
                                    child: ClipRect(
                                      child: Signature(
                                        controller:
                                            _model.signatureController ??=
                                                SignatureController(
                                          penStrokeWidth: 2.0,
                                          penColor: Colors.black,
                                          exportBackgroundColor: Colors.white,
                                        ),
                                        backgroundColor: const Color(0x00000000),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ).animateOnPageLoad(
                              animationsMap['columnOnPageLoadAnimation']!),
                        ),
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                dateTimeFormat(
                                  'yMd',
                                  getCurrentTimestamp,
                                  locale:
                                      FFLocalizations.of(context).languageCode,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey('Plus Jakarta Sans'),
                                    ),
                              ),
                              Text(
                                dateTimeFormat(
                                  'Hm',
                                  getCurrentTimestamp,
                                  locale:
                                      FFLocalizations.of(context).languageCode,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                              ),
                            ].divide(const SizedBox(height: 6.0)),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            final signatureImage =
                                await _model.signatureController!.toPngBytes();
                            if (signatureImage == null) {
                              showUploadMessage(
                                context,
                                'Signature is empty.',
                              );
                              return;
                            }
                            showUploadMessage(
                              context,
                              'Uploading signature...',
                              showLoading: true,
                            );
                            final downloadUrl = (await uploadData(
                                getSignatureStoragePath(), signatureImage));

                            ScaffoldMessenger.of(context).hideCurrentSnackBar();
                            if (downloadUrl != null) {
                              setState(() =>
                                  _model.uploadedSignatureUrl = downloadUrl);
                              showUploadMessage(
                                context,
                                'Success!',
                              );
                            } else {
                              showUploadMessage(
                                context,
                                'Failed to upload signature.',
                              );
                              return;
                            }

                            _model.consultaEquipamentos =
                                await queryEquipamentosChamadosRecordOnce(
                              parent: widget.refchamado,
                            );

                            await widget.refchamado!
                                .update(createChamadosRecordData(
                              assinaturaPosto: _model.uploadedSignatureUrl,
                              statusChamado: false,
                              nomeAssinante:
                                  telaAssinaturaChamadosRecord.nomeAssinante,
                              cpfAssinante:
                                  telaAssinaturaChamadosRecord.cpfAssinante,
                              dataHoraChamadoFinalizado: getCurrentTimestamp,
                            ));
                            setState(() {
                              FFAppState().equipamentosOs = [];
                              FFAppState().atual = 0;
                            });
                            while (FFAppState().atual <
                                _model.consultaEquipamentos!.length) {
                              setState(() {
                                FFAppState()
                                    .addToEquipamentosOs(EquipamentosOsStruct(
                                  equipamento: _model
                                      .consultaEquipamentos?[FFAppState().atual]
                                      .equipamento,
                                  nSerie: _model
                                      .consultaEquipamentos?[FFAppState().atual]
                                      .numeroSerie,
                                  marca: _model
                                      .consultaEquipamentos?[FFAppState().atual]
                                      .marca,
                                  modelo: _model
                                      .consultaEquipamentos?[FFAppState().atual]
                                      .modelo,
                                  portAprov: _model
                                      .consultaEquipamentos?[FFAppState().atual]
                                      .protAprov,
                                  nInmetro: _model
                                      .consultaEquipamentos?[FFAppState().atual]
                                      .numeroInmetro,
                                  afeIniMax: _model
                                      .consultaEquipamentos?[FFAppState().atual]
                                      .afericaoInicialMax
                                      .toString(),
                                  afeIniMin: _model
                                      .consultaEquipamentos?[FFAppState().atual]
                                      .afericaoInicialMin
                                      .toString(),
                                  afeFinMax: _model
                                      .consultaEquipamentos?[FFAppState().atual]
                                      .afericaoFinalMax
                                      .toString(),
                                  afeFinMin: _model
                                      .consultaEquipamentos?[FFAppState().atual]
                                      .afericaoFinalMin
                                      .toString(),
                                  vazao: _model
                                      .consultaEquipamentos?[FFAppState().atual]
                                      .vazao,
                                  encerranteIni: _model
                                      .consultaEquipamentos?[FFAppState().atual]
                                      .encerranteInicial
                                      .toString(),
                                  encerranteFin: _model
                                      .consultaEquipamentos?[FFAppState().atual]
                                      .encerranteFinal
                                      .toString(),
                                  volRetirado: _model
                                      .consultaEquipamentos?[FFAppState().atual]
                                      .volumeRetirado
                                      .toString(),
                                ));
                              });
                              setState(() {
                                FFAppState().atualListas = 0;
                              });
                              while (FFAppState().atualListas <
                                  _model
                                      .consultaEquipamentos![FFAppState().atual]
                                      .lacreRetiradoPainel
                                      .length) {
                                setState(() {
                                  FFAppState().updateEquipamentosOsAtIndex(
                                    FFAppState().atual,
                                    (e) => e
                                      ..updateLacresRetPainel(
                                        (e) => e.add(_model
                                                .consultaEquipamentos![
                                                    FFAppState().atual]
                                                .lacreRetiradoPainel[
                                            FFAppState().atualListas]),
                                      ),
                                  );
                                });
                                setState(() {
                                  FFAppState().atualListas =
                                      FFAppState().atualListas + 1;
                                });
                              }
                              setState(() {
                                FFAppState().atualListas = 0;
                              });
                              while (FFAppState().atualListas <
                                  _model
                                      .consultaEquipamentos![FFAppState().atual]
                                      .lacreColocadoPainel
                                      .length) {
                                setState(() {
                                  FFAppState().updateEquipamentosOsAtIndex(
                                    FFAppState().atual,
                                    (e) => e
                                      ..updateLacresColPainel(
                                        (e) => e.add(_model
                                                .consultaEquipamentos![
                                                    FFAppState().atual]
                                                .lacreColocadoPainel[
                                            FFAppState().atualListas]),
                                      ),
                                  );
                                });
                                setState(() {
                                  FFAppState().atualListas =
                                      FFAppState().atualListas + 1;
                                });
                              }
                              setState(() {
                                FFAppState().atualListas = 0;
                              });
                              while (FFAppState().atualListas <
                                  _model
                                      .consultaEquipamentos![FFAppState().atual]
                                      .lacreRetiradoCorpo
                                      .length) {
                                setState(() {
                                  FFAppState().updateEquipamentosOsAtIndex(
                                    FFAppState().atual,
                                    (e) => e
                                      ..updateLacresRetCorpo(
                                        (e) => e.add(_model
                                                .consultaEquipamentos![
                                                    FFAppState().atual]
                                                .lacreRetiradoCorpo[
                                            FFAppState().atualListas]),
                                      ),
                                  );
                                });
                                setState(() {
                                  FFAppState().atualListas =
                                      FFAppState().atualListas + 1;
                                });
                              }
                              setState(() {
                                FFAppState().atualListas = 0;
                              });
                              while (FFAppState().atualListas <
                                  _model
                                      .consultaEquipamentos![FFAppState().atual]
                                      .lacreColocadoCorpo
                                      .length) {
                                setState(() {
                                  FFAppState().updateEquipamentosOsAtIndex(
                                    FFAppState().atual,
                                    (e) => e
                                      ..updateLacresColCorpo(
                                        (e) => e.add(_model
                                                .consultaEquipamentos![
                                                    FFAppState().atual]
                                                .lacreColocadoCorpo[
                                            FFAppState().atualListas]),
                                      ),
                                  );
                                });
                                setState(() {
                                  FFAppState().atualListas =
                                      FFAppState().atualListas + 1;
                                });
                              }
                              setState(() {
                                FFAppState().atualListas = 0;
                              });
                              while (FFAppState().atualListas <
                                  _model
                                      .consultaEquipamentos![FFAppState().atual]
                                      .selosRetirados
                                      .length) {
                                setState(() {
                                  FFAppState().updateEquipamentosOsAtIndex(
                                    FFAppState().atual,
                                    (e) => e
                                      ..updateSelosRet(
                                        (e) => e.add(_model
                                                .consultaEquipamentos![
                                                    FFAppState().atual]
                                                .selosRetirados[
                                            FFAppState().atualListas]),
                                      ),
                                  );
                                });
                                setState(() {
                                  FFAppState().atualListas =
                                      FFAppState().atualListas + 1;
                                });
                              }
                              setState(() {
                                FFAppState().atualListas = 0;
                              });
                              while (FFAppState().atualListas <
                                  _model
                                      .consultaEquipamentos![FFAppState().atual]
                                      .selosColocados
                                      .length) {
                                setState(() {
                                  FFAppState().updateEquipamentosOsAtIndex(
                                    FFAppState().atual,
                                    (e) => e
                                      ..updateSelosCol(
                                        (e) => e.add(_model
                                                .consultaEquipamentos![
                                                    FFAppState().atual]
                                                .selosColocados[
                                            FFAppState().atualListas]),
                                      ),
                                  );
                                });
                                setState(() {
                                  FFAppState().atualListas =
                                      FFAppState().atualListas + 1;
                                });
                              }
                              setState(() {
                                FFAppState().atual = FFAppState().atual + 1;
                              });
                            }
                            await actions.ordemDeServico6(
                              telaAssinaturaChamadosRecord.codChamado,
                              dateTimeFormat(
                                'dd/MM/y',
                                telaAssinaturaChamadosRecord
                                    .dataHoraChamadoFinalizado!,
                                locale:
                                    FFLocalizations.of(context).languageCode,
                              ),
                              '',
                              telaAssinaturaChamadosRecord.razaoSocialCliente,
                              FFAppState().equipamentosOs.toList(),
                              telaAssinaturaChamadosRecord.cnpjCliente,
                              telaAssinaturaChamadosRecord.endereco,
                              '${telaAssinaturaChamadosRecord.cidade}, ${telaAssinaturaChamadosRecord.uf}',
                              telaAssinaturaChamadosRecord.motivoChamado,
                              _model.uploadedSignatureUrl,
                            );

                            setState(() {});
                          },
                          text: 'Confirmar',
                          icon: const Icon(
                            Icons.check,
                            size: 15.0,
                          ),
                          options: FFButtonOptions(
                            width: 300.0,
                            height: 50.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).success,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleSmallFamily,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  fontSize: 16.0,
                                  letterSpacing: 0.4,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .titleSmallFamily),
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
