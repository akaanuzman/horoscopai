import 'package:auto_route/auto_route.dart';
import 'package:horoscopai/features/home_view.dart';
import 'package:horoscopai/features/splash/splash_view.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: AppRouter._replaceInRouteName)

/// AppRouter is the main router management class for the app.
final class AppRouter extends _$AppRouter {
  static const _replaceInRouteName = 'View,Route';
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: HomeRoute.page),
      ];
}
