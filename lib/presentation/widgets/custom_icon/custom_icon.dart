import 'package:sfera_project_1/presentation/template/template.dart';

class CustomIcon extends StatelessWidget {
  final SferaIcons icon;
  final Color? color;
  final double size;

  const CustomIcon({
    super.key,
    required this.icon,
    this.color = ThemeColors.white,
    this.size = 60,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/icons/${icon.name}.svg',
      color: color,
      width: size.w,
      height: size.h,
      alignment: Alignment.center,
    );
  }
}
