import 'package:sfera_project_1/presentation/template/template.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? searchTitle;
  final bool back;
  final bool showAction;
  final VoidCallback? onPressed;

  const CustomAppBar({
    super.key,
    required this.title,
    required this.back,
    this.searchTitle,
    required this.showAction,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: searchTitle ??
          CustomText(
            text: title,
            textStyle: ThemeTextSemibold.s20,
          ),
      leading: back ? null : const SizedBox.shrink(),
      // leading: Padding(
      //   padding: EdgeInsets.only(left: 16.w),
      //   child: CustomIcon(
      //     icon: Icons.arrow_back,
      //     onTap: () => Navigator.of(context).pop(),
      //   ),
      // ),
      actions: [
        if (showAction)
          Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: CustomIcon(
              icon: Icons.settings,
              onTap: () => Navigator.of(context)
                  .pushNamed(AppRoutes.routeToSettingsPage),
            ),
          )
      ],
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 60);
}
