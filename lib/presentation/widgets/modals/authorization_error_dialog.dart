import 'package:sfera_project_1/presentation/template/template.dart';

authorizationErrorDialog(Object e) {
  showSimpleDialog(
    titleTopPadding: 16,
    titleBottomPadding: 10,
    contentTopPadding: 10,
    contentBottomPadding: 16,
    contentHorizontalPadding: 10,
    title: const SpacedRow(
      space: 2,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomIcon(
          icon: Icons.error,
          color: ThemeColors.red,
          size: 20,
        ),
        CustomText(text: ConstantText.error),
      ],
    ),
    body: CustomText(text: e.toString()),
  );
}
