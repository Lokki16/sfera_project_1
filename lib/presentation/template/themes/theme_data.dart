import 'package:sfera_project_1/presentation/template/template.dart';

class SferaAppTheme {
  static ThemeData get lightTheme => ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: ThemeColors.white,
      );

  static ThemeData get darkTheme => ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: ThemeColors.sferaBlue,
      );
}
