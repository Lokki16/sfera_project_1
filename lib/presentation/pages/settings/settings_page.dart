import 'package:sfera_project_1/presentation/template/template.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

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
            CustomButton(
              text: ConstantText.signOut,
              onPressed: () {
                AuthorizationRepository().signOut();
                Navigator.of(context)
                    .pushNamed(AppRoutes.routeToAuthorizationPage);
              },
            ),
          ],
        ),
      ),
    );
  }
}
