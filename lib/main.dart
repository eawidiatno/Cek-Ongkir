import 'package:cek_ongkir_cubit/injection.dart';
import 'package:cek_ongkir_cubit/presentation/app_widget.dart';
import 'package:flutter/material.dart';

void main() {
  configureDependencies();
  runApp(const AppWidget());
}
