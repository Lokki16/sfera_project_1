import 'package:sfera_project_1/presentation/template/template.dart';

class Themes extends StatelessWidget {
  const Themes({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultBody(
      child: SpacedColumn(
        space: 12,
        children: [
          BuildSettingsTile2(
              language: 'Light',
              onTap: () {
                Get.changeThemeMode(ThemeMode.light);
                Get.changeTheme(SferaAppTheme.lightTheme);
              }),
          BuildSettingsTile2(
              language: 'Dark',
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

class BuildSettingsTile2 extends StatelessWidget {
  final String language;
  final VoidCallback onTap;

  const BuildSettingsTile2({
    super.key,
    required this.language,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SpacedRow(
        space: 2.w,
        children: [
          CustomText(
            text: language,
          ),
        ],
      ),
    );
  }
}
