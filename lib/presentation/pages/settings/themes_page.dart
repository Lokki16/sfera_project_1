import 'package:sfera_project_1/presentation/template/template.dart';

class ThemesPage extends StatelessWidget {
  const ThemesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultBody(
      topPadding: 50,
      title: ConstantText.themes,
      showAction: false,
      child: Center(
        child: SpacedColumn(
          space: 12,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Get.changeThemeMode(ThemeMode.light);
                Get.changeTheme(SferaAppTheme.lightTheme);
              },
              child: const CustomText(text: ConstantText.light),
            ),
            GestureDetector(
              onTap: () {
                Get.changeThemeMode(ThemeMode.dark);
                Get.changeTheme(SferaAppTheme.darkTheme);
              },
              child: const CustomText(text: ConstantText.dark),
            ),
          ],
        ),
      ),
    );
  }
}
