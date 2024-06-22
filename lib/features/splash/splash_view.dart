import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:horoscopai/features/splash/mixin/splash_view_mixin.dart';
import 'package:horoscopai/products/asset/assets.gen.dart';
import 'package:kartal/kartal.dart';

@RoutePage()

/// Splash view for the application is running this view
final class SplashView extends StatefulWidget {
  /// Splash view for the application is running this view
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with SplashViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Assets.images.imgBackground.image(),
          const _IconAndAppTitle(),
        ],
      ),
    );
  }
}

final class _IconAndAppTitle extends StatelessWidget {
  const _IconAndAppTitle();

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Assets.icons.icLogo.image(),
          context.sized.emptySizedHeightBoxLow3x,
          Text(
            'Horoscopai',
            style: context.general.textTheme.headlineLarge,
          ),
        ],
      ),
    );
  }
}
