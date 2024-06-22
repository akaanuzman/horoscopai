import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:horoscopai/features/splash/splash_view.dart';
import 'package:horoscopai/products/routers/app_router.dart';

/// This mixin is used for [SplashView] class
mixin SplashViewMixin on State<SplashView> {
  @override
  void initState() {
    /// Delayed 2 seconds for splash screen
    /// After 2 seconds, push to [HomeRoute]
    /// We will some process in the future
    Future<void>.delayed(const Duration(seconds: 2), () {
      context.router.replaceAll([const HomeRoute()]);
    });
    super.initState();
  }
}
