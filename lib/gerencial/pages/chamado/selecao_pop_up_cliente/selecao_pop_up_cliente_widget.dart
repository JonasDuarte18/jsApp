import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/gerencial/pages/cadastro_cliente/pop_up_cadastro_cliente/pop_up_cadastro_cliente_widget.dart';
import '/gerencial/selecao/icon_selecao/icon_selecao_widget.dart';
import 'package:collection/collection.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';
import 'selecao_pop_up_cliente_model.dart';
export 'selecao_pop_up_cliente_model.dart';

class SelecaoPopUpClienteWidget extends StatefulWidget {
  const SelecaoPopUpClienteWidget({super.key});

  @override
  State<SelecaoPopUpClienteWidget> createState() =>
      _SelecaoPopUpClienteWidgetState();
}

class _SelecaoPopUpClienteWidgetState extends State<SelecaoPopUpClienteWidget> {
  late SelecaoPopUpClienteModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelecaoPopUpClienteModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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

    return Form(
      key: _model.formKey,
      autovalidateMode: AutovalidateMode.disabled,
      child: Container(
        width: 900.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'SELECIONE O CLIENTE',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Lato',
                              color: const Color(0xFF081437),
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                              useGoogleFonts:
                                  GoogleFonts.asMap().containsKey('Lato'),
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.clear,
                          color: FlutterFlowTheme.of(context).error,
                          size: 26.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 1.0,
                indent: 8.0,
                endIndent: 8.0,
                color: FlutterFlowTheme.of(context).accent1,
              ),
              Flexible(
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 10.0),
                  child: StreamBuilder<List<ClientesRecord>>(
                    stream: queryClientesRecord(
                      queryBuilder: (clientesRecord) =>
                          clientesRecord.orderBy('cod_cliente'),
                    ),
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
                      List<ClientesRecord> containerClientesRecordList =
                          snapshot.data!;
                      return Container(
                        height: 460.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.0),
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
                                children: [
                                  Container(
                                    width: 250.0,
                                    height: 40.0,
                                    decoration: const BoxDecoration(),
                                    child: SizedBox(
                                      width: 400.0,
                                      child: TextFormField(
                                        controller: _model.textController,
                                        focusNode: _model.textFieldFocusNode,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          '_model.textController',
                                          const Duration(milliseconds: 500),
                                          () async {
                                            safeSetState(() {
                                              _model.simpleSearchResults =
                                                  TextSearch(
                                                containerClientesRecordList
                                                    .map(
                                                      (record) => TextSearchItem
                                                          .fromTerms(record, [
                                                        record.cnpj,
                                                        record.razaoSocial,
                                                        record.nomeFantasia,
                                                        record.municipio]),
                                                    )
                                                    .toList(),
                                              )
                                                      .search(_model
                                                          .textController.text)
                                                      .map((r) => r.object)
                                                      .toList();
                                            });
                                          },
                                        ),
                                        autofocus: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelStyle: FlutterFlowTheme.of(
                                                  context)
                                              .labelMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMediumFamily,
                                                color: const Color(0xFFA5A7B7),
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.normal,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMediumFamily),
                                              ),
                                          hintText: 'Pesquisar cliente',
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .override(
                                                    fontFamily: 'Open Sans',
                                                    color: const Color(0xFFA1A1B7),
                                                    fontSize: 15.0,
                                                    letterSpacing: 0.3,
                                                    fontWeight: FontWeight.w600,
                                                    useGoogleFonts:
                                                        GoogleFonts.asMap()
                                                            .containsKey(
                                                                'Open Sans'),
                                                  ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                          contentPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 0.0, 0.0),
                                          prefixIcon: const Icon(
                                            Icons.search_outlined,
                                            color: Color(0xFFA1A1B7),
                                            size: 26.0,
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Lato',
                                              color: const Color(0xFF5C5F78),
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey('Lato'),
                                            ),
                                        textAlign: TextAlign.start,
                                        cursorColor: const Color(0xFF0A00A6),
                                        validator: _model
                                            .textControllerValidator
                                            .asValidator(context),
                                      ),
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
                                        child: Container(
                                          width: 100.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color: _model.mouseRegionHovered1? const Color(0xFF1C84FF)
                                                : const Color(0xFFE9F3FF),
                                            borderRadius:
                                                BorderRadius.circular(6.0),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 10.0, 0.0),
                                                child: Icon(
                                                  Icons.filter_alt,
                                                  color: _model
                                                          .mouseRegionHovered1? const Color(0xFFE9F3FF)
                                                      : const Color(0xFF1C84FF),
                                                  size: 24.0,
                                                ),
                                              ),
                                              Text(
                                                'Filtro',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Lato',
                                                      color: _model
                                                              .mouseRegionHovered1? const Color(0xFFE9F3FF)
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
                                            ],
                                          ),
                                        ),
                                      ),
                                      MouseRegion(
                                        opaque: false,
                                        cursor: MouseCursor.defer ??
                                            MouseCursor.defer,
                                        onEnter: ((event) async {
                                          setState(() => _model
                                              .mouseRegionHovered2 = true);
                                        }),
                                        onExit: ((event) async {
                                          setState(() => _model
                                              .mouseRegionHovered2 = false);
                                        }),
                                        child: Container(
                                          width: 210.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color: _model.mouseRegionHovered2? const Color(0xFF006EE7)
                                                : const Color(0xFF1C84FF),
                                            borderRadius:
                                                BorderRadius.circular(6.0),
                                          ),
                                          child: Builder(
                                            builder: (context) => InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                await showDialog(
                                                  barrierDismissible: false,
                                                  context: context,
                                                  builder: (dialogContext) {
                                                    return Dialog(
                                                      elevation: 0,
                                                      insetPadding:
                                                          EdgeInsets.zero,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      alignment:
                                                          const AlignmentDirectional(
                                                                  0.0, 0.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                      child:
                                                          const PopUpCadastroClienteWidget(),
                                                    );
                                                  },
                                                ).then(
                                                    (value) => setState(() {}));
                                              },
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Icon(
                                                      Icons.add,
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      size: 24.0,
                                                    ),
                                                  ),
                                                  Text(
                                                    'Adicionar cliente',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Lato',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          fontSize: 15.0,
                                                          letterSpacing: 0.4,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          useGoogleFonts:
                                                              GoogleFonts
                                                                      .asMap()
                                                                  .containsKey(
                                                                      'Lato'),
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ].divide(const SizedBox(width: 10.0)),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Builder(
                                builder: (context) {
                                  final clientes =
                                      _model.textController.text == ''
                                          ? containerClientesRecordList
                                              .map((e) => e)
                                              .toList()
                                          : _model.simpleSearchResults
                                              .map((e) => e)
                                              .toList()
                                              .map((e) => e)
                                              .toList();
                                  return FlutterFlowDataTable<ClientesRecord>(
                                    controller:
                                        _model.paginatedDataTableController,
                                    data: clientes,
                                    columnsBuilder: (onSortChanged) => [
                                      DataColumn2(
                                        label: DefaultTextStyle.merge(
                                          softWrap: true,
                                          child: Text(
                                            'COD.',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: const Color(0xFF929292),
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.normal,
                                                  useGoogleFonts:
                                                      GoogleFonts.asMap()
                                                          .containsKey(
                                                              'Readex Pro'),
                                                ),
                                          ),
                                        ),
                                      ),
                                      DataColumn2(
                                        label: DefaultTextStyle.merge(
                                          softWrap: true,
                                          child: Text(
                                            'RAZÃO SOCIAL',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: const Color(0xFF929292),
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.normal,
                                                  useGoogleFonts:
                                                      GoogleFonts.asMap()
                                                          .containsKey(
                                                              'Readex Pro'),
                                                ),
                                          ),
                                        ),
                                      ),
                                      DataColumn2(
                                        label: DefaultTextStyle.merge(
                                          softWrap: true,
                                          child: Text(
                                            'CNPJ',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: const Color(0xFF929292),
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.normal,
                                                  useGoogleFonts:
                                                      GoogleFonts.asMap()
                                                          .containsKey(
                                                              'Readex Pro'),
                                                ),
                                          ),
                                        ),
                                      ),
                                      DataColumn2(
                                        label: DefaultTextStyle.merge(
                                          softWrap: true,
                                          child: Text(
                                            'CIDADE - ESTADO',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: const Color(0xFF929292),
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.normal,
                                                  useGoogleFonts:
                                                      GoogleFonts.asMap()
                                                          .containsKey(
                                                              'Readex Pro'),
                                                ),
                                          ),
                                        ),
                                      ),
                                      DataColumn2(
                                        label: DefaultTextStyle.merge(
                                          softWrap: true,
                                          child: Container(),
                                        ),
                                      ),
                                    ],
                                    dataRowBuilder: (clientesItem,
                                            clientesIndex,
                                            selected,
                                            onSelectChanged) =>
                                        DataRow(
                                      color: MaterialStateProperty.all(
                                        clientesIndex % 2 == 0
                                            ? FlutterFlowTheme.of(context)
                                                .secondaryBackground
                                            : FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                      ),
                                      cells: [
                                        Text(
                                          clientesItem.codCliente.toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Open Sans',
                                                color: const Color(0xFF2A344E),
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.w600,
                                                useGoogleFonts:
                                                    GoogleFonts.asMap()
                                                        .containsKey(
                                                            'Open Sans'),
                                              ),
                                        ),
                                        Text(
                                          clientesItem.razaoSocial,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Open Sans',
                                                color: const Color(0xFF2A344E),
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.w600,
                                                useGoogleFonts:
                                                    GoogleFonts.asMap()
                                                        .containsKey(
                                                            'Open Sans'),
                                              ),
                                        ),
                                        Text(
                                          clientesItem.cnpj,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Open Sans',
                                                color: const Color(0xFF2A344E),
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.w600,
                                                useGoogleFonts:
                                                    GoogleFonts.asMap()
                                                        .containsKey(
                                                            'Open Sans'),
                                              ),
                                        ),
                                        Text(
                                          '${clientesItem.municipio} - ${clientesItem.uf}',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                color: const Color(0xFF2A344E),
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(1.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              _model.ultimoChamado =
                                                  await queryChamadosRecordOnce(
                                                queryBuilder:
                                                    (chamadosRecord) =>
                                                        chamadosRecord.orderBy(
                                                            'cod_chamado',
                                                            descending: true),
                                                singleRecord: true,
                                              ).then((s) => s.firstOrNull);

                                              var chamadosRecordReference =
                                                  ChamadosRecord.collection
                                                      .doc();
                                              await chamadosRecordReference
                                                  .set(createChamadosRecordData(
                                                refCliente:
                                                    clientesItem.reference,
                                                cnpjCliente: clientesItem.cnpj,
                                                dataHoraChamadoCriado:
                                                    getCurrentTimestamp,
                                                statusChamado: false,
                                                cidade: clientesItem.municipio,
                                                uf: clientesItem.uf,
                                                codChamado: _model
                                                        .ultimoChamado!
                                                        .codChamado +
                                                    1,
                                                razaoSocialCliente:
                                                    clientesItem.razaoSocial,
                                                endereco:
                                                    '${clientesItem.logradouro}, ${clientesItem.bairro}, ${clientesItem.numeroEND}',
                                                motivoChamado: '',
                                                dataHoraChamadoFinalizado: null,
                                                descricaoDoChamado: '',
                                                tecnicoResponsavel: '',
                                                solicitante: '',
                                                assinaturaPosto: '',
                                                codChamadoCia: null,
                                              ));
                                              _model.chamadoCriado = ChamadosRecord
                                                  .getDocumentFromData(
                                                      createChamadosRecordData(
                                                        refCliente: clientesItem
                                                            .reference,
                                                        cnpjCliente:
                                                            clientesItem.cnpj,
                                                        dataHoraChamadoCriado:
                                                            getCurrentTimestamp,
                                                        statusChamado: false,
                                                        cidade: clientesItem
                                                            .municipio,
                                                        uf: clientesItem.uf,
                                                        codChamado: _model
                                                                .ultimoChamado!
                                                                .codChamado +
                                                            1,
                                                        razaoSocialCliente:
                                                            clientesItem
                                                                .razaoSocial,
                                                        endereco:
                                                            '${clientesItem.logradouro}, ${clientesItem.bairro}, ${clientesItem.numeroEND}',
                                                        motivoChamado: '',
                                                        dataHoraChamadoFinalizado:
                                                            null,
                                                        descricaoDoChamado: '',
                                                        tecnicoResponsavel: '',
                                                        solicitante: '',
                                                        assinaturaPosto: '',
                                                        codChamadoCia: null,
                                                      ),
                                                      chamadosRecordReference);

                                              context.pushNamed(
                                                'PgDoChamado',
                                                queryParameters: {
                                                  'docChamado': serializeParam(
                                                    _model.chamadoCriado,
                                                    ParamType.Document,
                                                  ),
                                                }.withoutNulls,
                                                extra: <String, dynamic>{
                                                  'docChamado':
                                                      _model.chamadoCriado,
                                                },
                                              );

                                              setState(() {});
                                            },
                                            child: IconSelecaoWidget(
                                              key: Key(
                                                  'Keyiy1_${clientesIndex}_of_${clientes.length}'),
                                            ),
                                          ),
                                        ),
                                      ].map((c) => DataCell(c)).toList(),
                                    ),
                                    paginated: false,
                                    selectable: false,
                                    headingRowHeight: 56.0,
                                    dataRowHeight: 48.0,
                                    columnSpacing: 20.0,
                                    borderRadius: BorderRadius.circular(8.0),
                                    addHorizontalDivider: false,
                                    addTopAndBottomDivider: false,
                                    hideDefaultHorizontalDivider: false,
                                    addVerticalDivider: false,
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
