import 'package:sfera_project_1/presentation/template/template.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final VoidCallback? onPressed;

  const CustomAppBar({
    super.key,
    this.title,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const CustomText(text: Constants.appTitle),
      backgroundColor: ThemeColors.sferaBlueWidget,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
