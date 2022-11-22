import 'package:sfera_project_1/presentation/template/template.dart';

class Languages extends StatelessWidget {
  const Languages({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultBody(
      child: SpacedColumn(
        space: 12,
        children: [
          BuildSettingsTile(
            language: 'Русский',
            shortLang: 'Ru',
            onTap: () => Get.updateLocale(Locales().ruLocale),
          ),
          BuildSettingsTile(
            language: 'English',
            shortLang: 'En',
            onTap: () => Get.updateLocale(Locales().enLocale),
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
  final String language;
  final String shortLang;
  final VoidCallback onTap;

  const BuildSettingsTile({
    super.key,
    required this.language,
    required this.shortLang,
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
          CustomText(
            text: shortLang,
          ),
        ],
      ),
    );
  }
}
