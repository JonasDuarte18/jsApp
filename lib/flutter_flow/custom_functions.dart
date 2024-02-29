import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/firebase_auth/auth_util.dart';

String? uperCase(String? entrada) {
  // transforma letras minusculas em maiusculas
  String? input = '$entrada';
  String? output = input?.toUpperCase();
  return output;
}

List<String>? listadorLacres(String? lacres) {
  // transforma cada linha de uma caixa detexto em um item de uma lista, e ignora linhas vazias
  if (lacres == null) return null;

  final lines = lacres
      .split('\n')
      .map((line) => line.trim())
      .where((line) => line.isNotEmpty)
      .toList();
  return lines.isEmpty ? null : lines;
}
