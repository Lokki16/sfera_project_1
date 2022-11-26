import 'package:sfera_project_1/presentation/template/template.dart';

class LanguagesPage extends StatelessWidget {
  const LanguagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultBody(
      title: 'Languages',
      showAction: false,
      child: SpacedColumn(
        space: 12,
        children: [
          BuildSettingsTile(
            text: ConstantText.russian,
            onTap: () => Get.updateLocale(Locales().ruLocale),
          ),
          BuildSettingsTile(
            text: ConstantText.english,
            onTap: () => Get.updateLocale(Locales().enLocale),
          ),
          BuildSettingsTile(
            text: ConstantText.japanese,
            onTap: () => Get.updateLocale(Locales().jpLocale),
          ),
          CustomButton(
            text: ConstantText.back,
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }
}

class BuildSettingsTile extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const BuildSettingsTile({
    super.key,
    required this.text,
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
            text: text,
            textStyle: ThemeTextSemibold.s20,
          ),
        ],
      ),
    );
  }
}
