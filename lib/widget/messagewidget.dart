// ignore_for_file: avoid_single_cascade_in_expression_statements, prefer_const_constructors

import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class MessageWidget  {
  static void informacion(BuildContext context, String message, int seconds) {
    Flushbar(
      title: 'Información',
      message: message,
      icon: Icon(
        Icons.info_outline,
        size: 28,
        color: Colors.blue.shade300,
      ),
      leftBarIndicatorColor: Colors.blue.shade300,
      duration: Duration(seconds: seconds),
    )..show(context);
  }
  static void confirmacion(BuildContext context, String message, int seconds) {
    Flushbar(
      title: 'Guardado',
      message: message,
      icon: Icon(
        Icons.info_outline,
        size: 28,
        color: Colors.green,
      ),
      leftBarIndicatorColor: Colors.green,
      duration: Duration(seconds: seconds),
    )..show(context);
  }
  static void advertencia(BuildContext context, String message, int seconds) {
    Flushbar(
      title: 'Advertencia',
      message: message,
      icon: Icon(
        Icons.warning,
        size: 28,
        color: Colors.orange,
      ),
      leftBarIndicatorColor: Colors.orange,
      duration: Duration(seconds: seconds),
    )..show(context);
  }
  static void error(BuildContext context, String message, int seconds) {
    Flushbar(
      title: 'Error',
      message: message,
      icon: Icon(
        Icons.error,
        size: 28,
        color: Colors.red,
      ),
      leftBarIndicatorColor: Colors.red,
      duration: Duration(seconds: seconds),
    )..show(context);
  }
}