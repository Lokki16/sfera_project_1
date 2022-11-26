import 'package:sfera_project_1/presentation/template/template.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultBody(
      title: ConstantText.enterInAccount,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomText(
              text: ConstantText.username,
              textStyle: ThemeTextSemibold.s20,
            ),
            SizedBox(height: 5.h),
            CustomTextField(
              validator: (value) => Validator.loginEmailValidator(value),
            ),
            SizedBox(height: 20.h),
            const CustomText(
              text: ConstantText.password,
              textStyle: ThemeTextSemibold.s20,
            ),
            SizedBox(height: 5.h),
            CustomTextField(
              obscureText: true,
              validator: (value) => Validator.loginPasswordValidator(value),
            ),
            SizedBox(height: 25.h),
            Row(
              children: [
                TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                        const MaterialStatePropertyAll(ThemeColors.blue2),
                    foregroundColor:
                        const MaterialStatePropertyAll(ThemeColors.white),
                    padding: MaterialStatePropertyAll(
                      EdgeInsets.symmetric(
                        horizontal: 15.w,
                        vertical: 8.h,
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: const CustomText(
                    text: 'Зарегестрироваться',
                    textStyle: ThemeTextSemibold.s20,
                  ),
                ),
                SizedBox(width: 30.w),
                TextButton(
                  onPressed: () {},
                  child: const CustomText(
                    text: 'Войти с помощью Google',
                    textStyle: ThemeTextSemibold.s20,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
