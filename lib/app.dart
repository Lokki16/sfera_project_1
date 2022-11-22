import 'package:sfera_project_1/presentation/template/template.dart';

class SferaApp extends StatelessWidget {
  const SferaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: Constants.showModeBanner,
        title: Constants.appTitle,
        theme: SferaAppTheme.lightTheme,
        darkTheme: SferaAppTheme.darkTheme,
        translations: GetLocalization(),
        locale: Get.deviceLocale,
        fallbackLocale: Locales().enLocale,
        routes: AppRoutes.getRoutes,
        initialRoute: AppRoutes.routeToAuthorization,
      ),
    );
  }
}
