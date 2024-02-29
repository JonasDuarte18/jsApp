import 'package:collection/collection.dart';

enum Uf {
  CE,
  PE,
  MA,
  BA,
  SP,
  PI,
  AM,
  RJ,
}

enum Funcao {
  proprietario,
  gerente,
  administracao,
  tecnico,
  ajudante,
  faxineiro,
  rh,
  financeiro,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (Uf):
      return Uf.values.deserialize(value) as T?;
    case (Funcao):
      return Funcao.values.deserialize(value) as T?;
    default:
      return null;
  }
}
