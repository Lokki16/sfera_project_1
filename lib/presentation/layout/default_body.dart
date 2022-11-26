import 'package:sfera_project_1/presentation/template/template.dart';

class DefaultBody extends StatelessWidget {
  final String title;
  final bool showAction;
  final double topPadding;
  final double bottomPadding;
  final double horizontalPadding;
  final Widget child;

  const DefaultBody({
    super.key,
    this.title = '',
    this.showAction = true,
    this.topPadding = 20,
    this.bottomPadding = 20,
    this.horizontalPadding = 16,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: title, showAction: showAction),
      body: Padding(
        padding: EdgeInsets.only(
          top: topPadding.h,
          bottom: bottomPadding.h,
          left: horizontalPadding.w,
          right: horizontalPadding.w,
        ),
        child: child,
      ),
    );
  }
}
