import 'package:sfera_project_1/presentation/template/template.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? searchTitle;
  final bool back;
  final bool showSettings;
  final String? showProfile;
  final VoidCallback? onPressed;

  const CustomAppBar({
    super.key,
    required this.title,
    this.searchTitle,
    required this.back,
    required this.showSettings,
    required this.showProfile,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: searchTitle ?? CustomText(text: title),
      leading: back ? null : const SizedBox.shrink(),
      actions: [
        if (showProfile != null)
          Row(
            children: [
              CustomText(text: showProfile!),
              SizedBox(width: 10.w),
            ],
          ),
        if (showSettings)
          CustomIcon(
            icon: Icons.settings,
            onTap: () =>
                Navigator.of(context).pushNamed(AppRoutes.routeToSettingsPage),
          ),
        SizedBox(width: 16.w),
      ],
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 60);
}
