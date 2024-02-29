import 'dart:convert';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GerarOsCall {
  static Future<ApiCallResponse> call({
    List<String>? equipamentoList,
    List<String>? servicoList,
  }) async {
    final equipamento = _serializeList(equipamentoList);
    final servico = _serializeList(servicoList);

    return ApiManager.instance.makeApiCall(
      callName: 'GERAR OS',
      apiUrl: 'https://hook.us1.make.com/yfpj5kan7xatrk1nwag7tivvoim6ao39',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'equipamento': equipamento,
        'servico': servico,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GerarOsCraftMyPdfCall {
  static Future<ApiCallResponse> call() async {
    const ffApiRequestBody = '''
{
  "equipamentos": [
    {
      "equipamento": "equipamento",
      "servico": "servico"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GERAR OS CRAFT MY PDF',
      apiUrl: 'https://hook.us1.make.com/yfpj5kan7xatrk1nwag7tivvoim6ao39',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
