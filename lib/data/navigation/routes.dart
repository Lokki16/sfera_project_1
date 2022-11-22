import 'package:sfera_project_1/presentation/template/template.dart';

class AppRoutes {
  static const String routeToSettings = 'settings';
  static const String routeToLanguages = 'languages';
  static const String routeToThemes = 'themes';
  static const String routeToAuthorization = 'authorization';

  static dynamic getRoutes = {
    routeToSettings: (context) => const SettingsPage(),
    routeToLanguages: (context) => const LanguagesPage(),
    routeToThemes: (context) => const ThemesPage(),
    routeToAuthorization: (context) => const AuthorizationPage(),
  };
}
