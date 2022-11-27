import 'package:sfera_project_1/presentation/template/template.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.text,
    this.width = double.infinity,
    this.height = 38,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width.w,
      height: height.h,
      child: ElevatedButton(
        onPressed: onPressed,
        child: CustomText(text: text),
      ),
    );
  }
}
