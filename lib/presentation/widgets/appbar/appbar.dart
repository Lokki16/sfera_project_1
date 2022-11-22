import 'package:sfera_project_1/presentation/template/template.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  /*final String text;
  final VoidCallback? onPressed;*/

  /*const CustomAppBar({
    super.key,
    required this.text,
    required this.onPressed,
  });*/

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ThemeColors.black,
      title: const Text(Constants.appTitle),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
