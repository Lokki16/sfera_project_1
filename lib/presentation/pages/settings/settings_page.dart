import 'package:sfera_project_1/presentation/template/template.dart';

bool isSignedIn = false;

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final _firebaseAuthService = AuthorizationRepository();

  @override
  void initState() {
    _firebaseAuthService
        .signInState()
        .then((value) => setState(() => isSignedIn = value));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultBody(
      topPadding: 50,
      title: ConstantText.settings,
      showAction: false,
      child: Center(
        child: SpacedColumn(
          space: 5.h,
          children: [
            CustomButton(
              text: ConstantText.changeLanguage,
              onPressed: () => Navigator.of(context)
                  .pushNamed(AppRoutes.routeToLanguagesPage),
            ),
            CustomButton(
              text: ConstantText.changeTheme,
              onPressed: () =>
                  Navigator.of(context).pushNamed(AppRoutes.routeToThemesPage),
            ),
            if (isSignedIn)
              CustomButton(
                text: ConstantText.signOut,
                onPressed: () => _firebaseAuthService.signInState().then(
                  (value) {
                    setState(() => isSignedIn = value);
                    AuthorizationRepository().signOut();
                    Navigator.of(context)
                        .pushNamed(AppRoutes.routeToAuthorizationPage);
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
