import 'package:sfera_project_1/presentation/template/template.dart';

class AppRoutes {
  static const String routeToAuthorizationPage = '/authorization_page';
  static const String routeToRegistrationPage = '/registration_page';
  static const String routeToResetPasswordPage = '/reset_assword_page';
  static const String routeToHomePage = '/home_page';
  static const String routeToSettingsPage = '/settings_page';
  static const String routeToLanguagesPage = '/languages_page';
  static const String routeToThemesPage = '/themes_page';

  static dynamic getRoutes = {
    routeToAuthorizationPage: (context) => const AuthorizationPage(),
    routeToRegistrationPage: (context) => RegistrationPage(),
    routeToResetPasswordPage: (context) => ResetPasswordPage(),
    routeToHomePage: (context) => const HomePage(),
    routeToSettingsPage: (context) => const SettingsPage(),
    routeToLanguagesPage: (context) => const LanguagesPage(),
    routeToThemesPage: (context) => const ThemesPage(),
  };
}
