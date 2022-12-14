import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sfera_project_1/presentation/template/template.dart';

class SferaApp extends StatelessWidget {
  SferaApp({super.key});

  final characterRepository = CharacterRepository();

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthorizationBloc(),
        ),
        BlocProvider(
            create: (context) =>
                CharacterBloc(characterRepository: characterRepository)),
      ],
      child: ScreenUtilInit(
        builder: (context, child) => GetMaterialApp(
          debugShowCheckedModeBanner: Constants.showModeBanner,
          title: Constants.appTitle,
          theme: SferaAppTheme.lightTheme,
          darkTheme: SferaAppTheme.darkTheme,
          translations: GetLocalization(),
          locale: Get.deviceLocale,
          fallbackLocale: Locales().enLocale,
          routes: AppRoutes.getRoutes,
          initialRoute: user != null
              ? AppRoutes.routeToHomePage
              : AppRoutes.routeToAuthorizationPage,
        ),
      ),
    );
  }
}
