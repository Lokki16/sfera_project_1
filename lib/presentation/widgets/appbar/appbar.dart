import 'package:sfera_project_1/presentation/template/template.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? searchTitle;
  final bool showAction;
  final VoidCallback? onPressed;

  const CustomAppBar({
    super.key,
    required this.title,
    this.searchTitle,
    required this.showAction,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ThemeColors.blue2,
      centerTitle: true,
      title: searchTitle ??
          CustomText(
            text: title,
            textStyle: ThemeTextSemibold.s20,
          ),
      actions: showAction
          ? [
              Padding(
                padding: EdgeInsets.only(right: 5.w),
                child: CustomIcon(
                  icon: Icons.settings,
                  onTap: () => Get.toNamed(AppRoutes.routeToSettingsPage),
                ),
              )
            ]
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
