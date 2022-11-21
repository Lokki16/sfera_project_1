import 'package:sfera_project_1/presentation/template/template.dart';

class AppRoutes {
  static const String routeToSettings = 'settings';
  static const String routeToLanguages = 'languages';

  static dynamic getRoutes = {
    routeToSettings: (context) => const Settings(),
    routeToLanguages: (context) => const Languages(),
  };
}
