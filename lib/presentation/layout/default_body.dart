import 'package:sfera_project_1/presentation/template/template.dart';

class DefaultBody extends StatelessWidget {
  final Widget child;

  const DefaultBody({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: child,
    );
  }
}
