import 'package:sfera_project_1/presentation/template/template.dart';
import 'package:sfera_project_1/utils/localization/languages/japanese_locale.dart';

class GetLocalization extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'ru_RU': Russian.locale,
        'en_EN': English.locale,
        'jp_JP': Japanese.locale,
      };
}

class Locales {
  Locale get ruLocale => const Locale('ru');
  Locale get enLocale => const Locale('en');
  Locale get jpLocale => const Locale('jp');
}
