import 'package:sfera_project_1/presentation/template/template.dart';

class LanguagesPage extends StatelessWidget {
  const LanguagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultBody(
      topPadding: 50,
      title: ConstantText.languages,
      showAction: false,
      child: Center(
        child: SpacedColumn(
          space: 12,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => Get.updateLocale(Locales().ruLocale),
              child: const CustomText(text: ConstantText.russian),
            ),
            GestureDetector(
              onTap: () => Get.updateLocale(Locales().enLocale),
              child: const CustomText(text: ConstantText.english),
            ),
            GestureDetector(
              onTap: () => Get.updateLocale(Locales().jpLocale),
              child: const CustomText(text: ConstantText.japanese),
            ),
          ],
        ),
      ),
    );
  }
}
