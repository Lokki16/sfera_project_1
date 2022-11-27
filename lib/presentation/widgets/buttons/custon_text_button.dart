import 'package:sfera_project_1/presentation/template/template.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final double height;
  final VoidCallback? onPressed;

  const CustomTextButton({
    super.key,
    required this.text,
    this.height = 30,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: SizedBox(
        height: height.h,
        child: CustomText(
          text: text,
          textStyle: ThemeTextSemibold.s20,
        ),
      ),
    );
  }
}
