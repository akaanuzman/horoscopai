import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:horoscopai/products/asset/assets.gen.dart';
import 'package:horoscopai/products/enums/device_locales.dart';
import 'package:horoscopai/products/init/app_localizations.dart';
import 'package:horoscopai/products/init/language/locale_keys.g.dart';

/// Home view for the application
final class HomeView extends StatelessWidget {
  /// Home view for the application
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: ListView(
        children: <Widget>[
          const Text(LocaleKeys.home_title).tr(),
          const Text(LocaleKeys.home_description).tr(),
          ElevatedButton(
            onPressed: () {
              context.locale == DeviceLocales.tr.locale
                  ? AppLocalizations.changeLanguage(
                      context: context,
                      selectedLocale: DeviceLocales.en,
                    )
                  : AppLocalizations.changeLanguage(
                      context: context,
                      selectedLocale: DeviceLocales.tr,
                    );
            },
            child: const Text(LocaleKeys.general_buttons_save).tr(),
          ),
          Assets.images.imgFlags.image(),
          Assets.icons.icLove.svg(),
          Assets.lotties.animZombie.lottie(),
        ],
      ),
    );
  }
}
