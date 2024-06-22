import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:horoscopai/features/home_view.dart';
import 'package:horoscopai/products/init/app_initialize.dart';
import 'package:horoscopai/products/init/app_localizations.dart';
import 'package:horoscopai/products/utility/theme/app_theme.dart';

Future<void> main() async {
  await AppInitialize().initialize();

  runApp(AppLocalizations(child: const _MyApp()));
}

class _MyApp extends StatelessWidget {
  const _MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Horoscopai',
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: AppTheme().currentTheme,
      home: const HomeView(),
    );
  }
}
