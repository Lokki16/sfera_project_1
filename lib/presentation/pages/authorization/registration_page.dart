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
              textStyle: ThemeTextStyle.test,
            ),
            SizedBox(height: 5.h),
            CustomTextField(
              validator: (value) => Validator.loginEmailValidator(value),
            ),
            SizedBox(height: 20.h),
            const CustomText(
              text: ConstantText.password,
              textStyle: ThemeTextStyle.test,
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
                    backgroundColor: const MaterialStatePropertyAll(
                        ThemeColors.sferaBlueWidget),
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
                  child: const Text('Зарегестрироваться'),
                ),
                SizedBox(width: 30.w),
                TextButton(
                  onPressed: () {},
                  child: const Text('Войти с помощью Google'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
