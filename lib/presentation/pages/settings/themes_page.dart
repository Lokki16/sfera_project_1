import 'package:sfera_project_1/presentation/template/template.dart';

class ThemesPage extends StatelessWidget {
  const ThemesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultBody(
      title: 'Themes',
      showAction: false,
      child: SpacedColumn(
        space: 12,
        children: [
          BuildSettingsTile(
              text: ConstantText.light,
              onTap: () {
                Get.changeThemeMode(ThemeMode.light);
                Get.changeTheme(SferaAppTheme.lightTheme);
              }),
          BuildSettingsTile(
              text: ConstantText.dark,
              onTap: () {
                Get.changeThemeMode(ThemeMode.dark);
                Get.changeTheme(SferaAppTheme.darkTheme);
              }),
          CustomButton(
            text: ConstantText.back,
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }
}
