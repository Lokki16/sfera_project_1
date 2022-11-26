import 'package:sfera_project_1/presentation/template/template.dart';

class PopupLayout extends StatelessWidget {
  final Widget? title;
  final AlignmentGeometry? alignment;
  final double topPadding;
  final double bottomPadding;
  final double horizontalPadding;
  final double borderRadius;
  final List<Widget> children;

  const PopupLayout({
    super.key,
    this.title,
    this.alignment,
    this.topPadding = 32,
    this.bottomPadding = 32,
    this.horizontalPadding = 64,
    this.borderRadius = 0,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: title,
      titleTextStyle: ThemeTextSemibold.s20,
      alignment: alignment,
      insetPadding: EdgeInsets.symmetric(horizontal: 25.w),
      contentPadding: EdgeInsets.only(
        top: topPadding.h,
        bottom: bottomPadding.h,
        left: horizontalPadding.w,
        right: horizontalPadding.w,
      ),
      titlePadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius.r)),
      elevation: 0,
      children: children,
    );
  }
}
