import 'package:sfera_project_1/presentation/template/template.dart';

class DefaultBody extends StatelessWidget {
  final String title;
  final Widget? searchTitle;
  final bool back;
  final bool showSettings;
  final String? showProfile;
  final double topPadding;
  final double bottomPadding;
  final double horizontalPadding;
  final Widget child;

  const DefaultBody({
    super.key,
    this.title = '',
    this.searchTitle,
    this.back = true,
    this.showSettings = true,
    this.showProfile,
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
        showSettings: showSettings,
        showProfile: showProfile,
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
