import 'package:sfera_project_1/presentation/template/template.dart';

class SferaAppTheme {
  static ThemeData get lightTheme => ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: ThemeColors.white,
        textTheme: TextTheme(
          caption: ThemeTextSemibold.s20.apply(color: ThemeColors.black),
          bodyText1: ThemeTextSemibold.s20.apply(color: ThemeColors.black),
          bodyText2: ThemeTextSemibold.s20.apply(color: ThemeColors.black),
          subtitle1: ThemeTextSemibold.s20.apply(color: ThemeColors.black),
          subtitle2: ThemeTextSemibold.s20.apply(color: ThemeColors.black),
          headline1: ThemeTextSemibold.s20.apply(color: ThemeColors.black),
          headline2: ThemeTextSemibold.s20.apply(color: ThemeColors.black),
        ),
      );

  static ThemeData get darkTheme => ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: ThemeColors.blue1,
        textTheme: TextTheme(
          caption: ThemeTextSemibold.s20.apply(color: ThemeColors.white),
          bodyText1: ThemeTextSemibold.s20.apply(color: ThemeColors.white),
          bodyText2: ThemeTextSemibold.s20.apply(color: ThemeColors.white),
          subtitle1: ThemeTextSemibold.s20.apply(color: ThemeColors.white),
          subtitle2: ThemeTextSemibold.s20.apply(color: ThemeColors.white),
          headline1: ThemeTextSemibold.s20.apply(color: ThemeColors.white),
          headline2: ThemeTextSemibold.s20.apply(color: ThemeColors.white),
        ),
      );
}
