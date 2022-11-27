import 'package:sfera_project_1/presentation/template/template.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultBody(
      title: 'Settings',
      showAction: false,
      child: SpacedColumn(
        space: 5.h,
        children: [
          CustomButton(
            text: ConstantText.changeLanguage,
            onPressed: () =>
                Navigator.of(context).pushNamed(AppRoutes.routeToLanguagesPage),
          ),
          CustomButton(
            text: ConstantText.changeTheme,
            onPressed: () =>
                Navigator.of(context).pushNamed(AppRoutes.routeToLanguagesPage),
          ),
        ],
      ),
    );
  }
}
