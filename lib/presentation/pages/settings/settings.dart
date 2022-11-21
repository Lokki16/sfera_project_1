import 'package:sfera_project_1/presentation/template/template.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomButton(
        text: ConstantText.changeLanguage,
        onPressed: () =>
            Navigator.of(context).pushNamed(AppRoutes.routeToLanguages),
      ),
    );
  }
}
