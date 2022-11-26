import 'package:sfera_project_1/presentation/template/template.dart';

class AppRoutes {
  static const String routeToAuthorization = 'authorization';
  static const String routeToRegistration = 'registration';
  static const String routeToHome = 'home';
  static const String routeToSettings = 'settings';
  static const String routeToLanguages = 'languages';
  static const String routeToThemes = 'themes';

  static dynamic getRoutes = {
    routeToAuthorization: (context) => const AuthorizationPage(),
    routeToRegistration: (context) => const RegistrationPage(),
    routeToHome: (context) => const HomePage(),
    routeToSettings: (context) => const SettingsPage(),
    routeToLanguages: (context) => const LanguagesPage(),
    routeToThemes: (context) => const ThemesPage(),
  };
}
