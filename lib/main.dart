import 'package:flutter/material.dart';
import 'package:flutter_web_aula/responsividade;_wrap.dart';
import 'package:flutter_web_aula/responsividade_media_query.dart';
import 'package:flutter_web_aula/responsividade_row_col.dart';

void main() {
  runApp(MaterialApp(
   // home: ResponsividadeMediaQuery(),
   // home: ResponsividadeRowCol(),
    home: ResponsividadeWrap(),
    debugShowCheckedModeBanner: false,
  ));
}
