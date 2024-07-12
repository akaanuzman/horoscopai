import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:horoscopai/features/auth/login/widgets/custom_button.dart';
import 'package:horoscopai/features/auth/login/widgets/email_text_field.dart';
import 'package:horoscopai/features/auth/login/widgets/passw_text_field.dart';
import 'package:horoscopai/products/init/language/locale_keys.g.dart';
import 'package:kartal/kartal.dart';

@RoutePage()
class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          EmailTextField(
            text: LocaleKeys.logreg_textfield_eposta.tr(),
            icon: const Icon(Icons.email_outlined),
          ),
          context.sized.emptySizedHeightBoxLow3x,
          PasswTextField(
            text: LocaleKeys.logreg_textfield_password.tr(),
          ),
          context.sized.emptySizedHeightBoxLow3x,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomText(LocaleKeys.logreg_advancedoptions_forgotpassword.tr()),
              CustomText(LocaleKeys.logreg_advancedoptions_registernow.tr()),
            ],
          ),
          context.sized.emptySizedHeightBoxLow3x,
          CustomButton(
            text: LocaleKeys.general_buttons_login.tr(),
          ),
        ],
      ),
    );
  }

  Widget CustomText(String text) {
    return Text(
      text,
    );
  }
}
