import 'package:sfera_project_1/presentation/template/template.dart';

class DefaultBody extends StatelessWidget {
  final String title;
  final Widget? searchTitle;
  final bool showAction;
  final bool back;
  final double topPadding;
  final double bottomPadding;
  final double horizontalPadding;
  final Widget child;

  const DefaultBody({
    super.key,
    this.title = '',
    this.searchTitle,
    this.showAction = true,
    this.back = true,
    this.topPadding = 0,
    this.bottomPadding = 0,
    this.horizontalPadding = 16,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: title,
        searchTitle: searchTitle,
        back: back,
        showAction: showAction,
      ),
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
