import 'package:sfera_project_1/presentation/template/template.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultBody(
      child: Column(
        children: [
          CustomButton(
            text: ConstantText.settings,
            onPressed: () =>
                Navigator.of(context).pushNamed(AppRoutes.routeToSettings),
          ),
        ],
      ),
    );
  }
}
