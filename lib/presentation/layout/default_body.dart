import 'package:sfera_project_1/presentation/template/template.dart';

class DefaultBody extends StatelessWidget {
  final String? title;
  final Widget child;

  const DefaultBody({
    super.key,
    this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: title),
      body: Container(
        padding: const EdgeInsets.only(bottom: 5, top: 5),
        child: child,
      ),
    );
  }
}
