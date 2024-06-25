import 'package:envied/envied.dart';
import 'package:horoscopai/products/utility/environment/app_configuration.dart';

part 'dev_env.g.dart';

@Envied(
  obfuscate: true,
  path: 'assets/env/.dev.env',
)

/// Development environment configuration values
/// It using for development environment
final class DevEnv implements AppConfiguration {
  @EnviedField(varName: 'BASE_URL')
  static final String _baseUrl = _DevEnv._baseUrl;

  @override
  String get baseUrl => _baseUrl;
}
