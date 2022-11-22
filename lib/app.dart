import 'package:sfera_project_1/presentation/template/template.dart';

class SferaApp extends StatelessWidget {
  const SferaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: Constants.showModeBanner,
        title: Constants.appTitle,
        themeMode: ThemeMode.light,
        theme: SferaAppTheme.lightTheme,
        darkTheme: SferaAppTheme.darkTheme,
        locale: Get.deviceLocale,
        translations: GetLocalization(),
        routes: AppRoutes.getRoutes,
        initialRoute: AppRoutes.routeToSettings,
      ),
    );
  }
}
