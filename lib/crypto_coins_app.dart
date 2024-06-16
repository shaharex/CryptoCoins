import 'package:crypto_app/router/router.dart';
import 'package:crypto_app/theme/theme.dart';
import 'package:flutter/material.dart';

class CryptoCurrienciesApp extends StatelessWidget {
  const CryptoCurrienciesApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeDark,
      routes: routes,
    );
  }
}
