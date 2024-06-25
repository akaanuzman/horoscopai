import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:horoscopai/products/init/app_initialize.dart';
import 'package:horoscopai/products/init/app_localizations.dart';
import 'package:horoscopai/products/routers/app_router.dart';
import 'package:horoscopai/products/utility/theme/app_theme.dart';

Future<void> main() async {
  await AppInitialize().initialize();

  runApp(AppLocalizations(child: const _MyApp()));
}

final class _MyApp extends StatelessWidget {
  const _MyApp();
  static final appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter.config(),
      title: 'Horoscopai',
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: AppTheme().currentTheme,
    );
  }
}
