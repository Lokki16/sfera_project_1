import 'package:sfera_project_1/presentation/template/template.dart';

showSimpleDialog({
  String? buttonText,
  bool barrierDismissible = true,
  AlignmentGeometry? alignment,
  double topPadding = 0,
  double bottomPadding = 0,
  double horizontalPadding = 0,
  double borderRadius = 16,
  required Widget body,
}) {
  Future<bool> onWillPop() {
    if (barrierDismissible) {
      return Future.value(true);
    }
    return Future.value(false);
  }

  return showDialog(
    context: Get.context!,
    barrierDismissible: barrierDismissible,
    builder: (context) {
      return WillPopScope(
        onWillPop: onWillPop,
        child: PopupLayout(
          alignment: alignment,
          borderRadius: borderRadius,
          topPadding: topPadding,
          bottomPadding: bottomPadding,
          horizontalPadding: horizontalPadding,
          children: [body],
        ),
      );
    },
  );
}
