import 'package:sfera_project_1/presentation/template/template.dart';

class CustomTextField extends StatelessWidget {
  final String? nameField;
  final String? hintText;
  final IconData? icon;
  final double width;
  final double height;
  final bool obscureText;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;

  const CustomTextField({
    super.key,
    this.nameField,
    this.hintText,
    this.icon,
    this.width = double.infinity,
    this.height = 120,
    this.obscureText = false,
    this.onChanged,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: SpacedColumn(
        space: 5,
        children: [
          if (nameField != null)
            CustomText(text: nameField!, textStyle: ThemeTextSemibold.s20),
          TextFormField(
            obscureText: obscureText,
            validator: validator,
            style: const TextStyle(color: ThemeColors.white),
            cursorColor: ThemeColors.white,
            decoration: InputDecoration(
              filled: true,
              fillColor: ThemeColors.blue1,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide: BorderSide.none,
              ),
              prefixIcon:
                  icon != null ? CustomIcon(icon: icon!, size: 20) : null,
              hintText: hintText,
              hintStyle: ThemeTextSemibold.s20,
            ),
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
