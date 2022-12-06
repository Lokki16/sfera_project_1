import 'package:sfera_project_1/presentation/template/template.dart';

resetPasswordDialog() {
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
      children: [CustomText(text: ConstantText.resetPassword)],
    ),
    body: Column(
      children: [
        const CustomText(text: ConstantText.ressetPasswordMessage),
        CustomButton(
          text: ConstantText.back,
          onPressed: () => Get.toNamed(AppRoutes.routeToAuthorizationPage),
        ),
      ],
    ),
  );
}
