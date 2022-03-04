import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:trip_app/app/app.dart';
import 'package:trip_app/app/app_module.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Firebase.initializeApp();

  // TODO: ANTES, PRECISA FAZER AS VERIFICAÇÕES
  //TODO: QUANDO VOLTAR, FAZER A INICIALIZAÇAO DO FIREBASE E LOGIN


  //todo: deixar a primary color TEAL; mesclar com o secondary dos background dark/light


  runApp(
    EasyLocalization(
      supportedLocales: [Locale('pt', 'BR'), Locale('en', 'US')],
      path: 'assets/translations',
      // <-- change the path of the translation files
      // fallbackLocale: Locale('en', 'US'),
      fallbackLocale: Locale('pt', 'BR'),
      child: ModularApp(module: AppModule(), child: App()),
    ),
  );
}
