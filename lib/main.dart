import 'package:flutter/material.dart';
import 'package:open_weather/design_system/constants/theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:open_weather/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OpenWeather SNCF Exercice',
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: const [
        Locale('en', 'EN'), // English, England
        // Locale('fr', 'FR') // French, France
      ],
      theme: themeData,
      initialRoute: '/',
      onGenerateRoute: routes,
    );
  }
}
