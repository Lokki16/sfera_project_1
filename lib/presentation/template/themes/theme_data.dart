import 'package:sfera_project_1/presentation/template/template.dart';

class SferaAppTheme {
  static ThemeData get lightTheme => ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: ThemeColors.white,
        hintColor: ThemeColors.black,
        textTheme: TextTheme(
          caption: ThemeTextStyle.test.apply(color: ThemeColors.black),
          bodyText1: ThemeTextStyle.test.apply(color: ThemeColors.black),
          bodyText2: ThemeTextStyle.test.apply(color: ThemeColors.black),
          subtitle1: ThemeTextStyle.test.apply(color: ThemeColors.black),
          subtitle2: ThemeTextStyle.test.apply(color: ThemeColors.black),
          headline1: ThemeTextStyle.test.apply(color: ThemeColors.black),
          headline2: ThemeTextStyle.test.apply(color: ThemeColors.black),
        ),
      );

  static ThemeData get darkTheme => ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: ThemeColors.sferaBlue,
        hintColor: ThemeColors.white,
        textTheme: TextTheme(
          caption: ThemeTextStyle.test.apply(color: ThemeColors.white),
          bodyText1: ThemeTextStyle.test.apply(color: ThemeColors.white),
          bodyText2: ThemeTextStyle.test.apply(color: ThemeColors.white),
          subtitle1: ThemeTextStyle.test.apply(color: ThemeColors.white),
          subtitle2: ThemeTextStyle.test.apply(color: ThemeColors.white),
          headline1: ThemeTextStyle.test.apply(color: ThemeColors.white),
          headline2: ThemeTextStyle.test.apply(color: ThemeColors.white),
          //bodyText2: const TextStyle(color: ThemeColors.white),
        ),
      );
}
