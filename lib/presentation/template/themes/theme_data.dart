import 'package:sfera_project_1/presentation/template/template.dart';

class SferaAppTheme {
  // theme datas
  static ThemeData get lightTheme => ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: ThemeColors.white,
        appBarTheme: lightAppBarTheme(),
        textTheme: lightTextTheme(),
        elevatedButtonTheme: lightElevationButtonTheme(),
      );

  static ThemeData get darkTheme => ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: ThemeColors.blue1,
        appBarTheme: darkAppBarTheme(),
        textTheme: darkTextTheme(),
        elevatedButtonTheme: darkElevationButtonTheme(),
      );

  // appbar themes
  static AppBarTheme lightAppBarTheme() => const AppBarTheme(
        backgroundColor: ThemeColors.blue2,
        elevation: 0,
        centerTitle: true,
      );

  static AppBarTheme darkAppBarTheme() => const AppBarTheme(
        backgroundColor: ThemeColors.blue2,
        elevation: 0,
        centerTitle: true,
      );

  // text themes
  static TextTheme lightTextTheme() => TextTheme(
        caption: ThemeTextSemibold.s20.copyWith(color: ThemeColors.black),
        bodyText1: ThemeTextSemibold.s20.copyWith(color: ThemeColors.black),
        bodyText2: ThemeTextSemibold.s20.copyWith(color: ThemeColors.black),
        subtitle1: ThemeTextSemibold.s20.copyWith(color: ThemeColors.black),
        subtitle2: ThemeTextSemibold.s20.copyWith(color: ThemeColors.black),
        headline1: ThemeTextSemibold.s20.copyWith(color: ThemeColors.black),
        headline2: ThemeTextSemibold.s20.copyWith(color: ThemeColors.black),
      );

  static TextTheme darkTextTheme() => TextTheme(
        caption: ThemeTextSemibold.s20.copyWith(color: ThemeColors.white),
        bodyText1: ThemeTextSemibold.s20.copyWith(color: ThemeColors.white),
        bodyText2: ThemeTextSemibold.s20.copyWith(color: ThemeColors.white),
        subtitle1: ThemeTextSemibold.s20.copyWith(color: ThemeColors.white),
        subtitle2: ThemeTextSemibold.s20.copyWith(color: ThemeColors.white),
        headline1: ThemeTextSemibold.s20.copyWith(color: ThemeColors.white),
        headline2: ThemeTextSemibold.s20.copyWith(color: ThemeColors.white),
      );

  // button themes
  static ElevatedButtonThemeData lightElevationButtonTheme() =>
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: ThemeColors.blue2,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.r)),
        ),
      );

  static ElevatedButtonThemeData darkElevationButtonTheme() =>
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: ThemeColors.blue2,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.r)),
        ),
      );
}
