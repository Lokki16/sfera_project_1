import 'package:sfera_project_1/presentation/template/template.dart';

// Todo: Change this widget
class CustomTextField extends StatelessWidget {
  final String? hintText;
  final void Function(String)? onChanged;

  const CustomTextField({
    super.key,
    this.hintText,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 15.h,
        horizontal: 16.w,
      ),
      child: TextField(
        style: const TextStyle(color: ThemeColors.white),
        cursorColor: ThemeColors.white,
        decoration: InputDecoration(
          filled: true,
          fillColor: ThemeColors.grey,
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
