import 'package:sfera_project_1/presentation/template/template.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final bool obscureText;

  const CustomTextField({
    super.key,
    this.controller,
    this.hintText,
    this.onChanged,
    this.validator,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 15.h,
        horizontal: 16.w,
      ),
      child: TextFormField(
        obscureText: obscureText,
        controller: controller,
        validator: validator,
        style: const TextStyle(color: ThemeColors.white),
        cursorColor: ThemeColors.white,
        decoration: InputDecoration(
          filled: true,
          fillColor: ThemeColors.sferaBlueWidget,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide.none,
          ),
          prefixIcon: const Icon(Icons.search, color: Colors.white),
          hintText: hintText,
          hintStyle: ThemeTextStyle.test,
        ),
        onChanged: onChanged,
      ),
    );
  }
}
