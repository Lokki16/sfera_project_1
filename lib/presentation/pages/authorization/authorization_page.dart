import 'package:sfera_project_1/presentation/template/template.dart';

class AuthorizationPage extends StatelessWidget {
  const AuthorizationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultBody(
      title: ConstantText.enterInAccount,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 25.h),
            const AuthorizationForm(),
            SizedBox(height: 25.h),
            const CustomText(
              text: ConstantText.forNewUser,
              textStyle: ThemeTextStyle.test,
            ),
            SizedBox(height: 5.h),
            TextButton(
              child: const CustomText(text: ConstantText.register),
              onPressed: () =>
                Navigator.of(context).pushNamed(AppRoutes.routeToRegistration),             
            ),
            SizedBox(height: 25.h),
          ],
        ),
      ),
    );
  }
}

class AuthorizationForm extends StatefulWidget {
  const AuthorizationForm({super.key});

  @override
  State<AuthorizationForm> createState() => _AuthorizationFormState();
}

class _AuthorizationFormState extends State<AuthorizationForm> {
  final AuthorizationRepository firebaseAuthService = AuthorizationRepository();
  final signInForm = GlobalKey<FormState>();
  final emailController = TextEditingController(text: '');
  final passwordController = TextEditingController(text: '');
  String email = '';
  String password = '';
  String signInError = '';

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: signInForm,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText(
            text: ConstantText.username,
            textStyle: ThemeTextStyle.test,
          ),
          SizedBox(height: 5.h),
          CustomTextField(
            controller: emailController,
            onChanged: (value) => setState(() => email = value),
            validator: (value) => Validator.loginEmailValidator(value),
          ),
          SizedBox(height: 20.h),
          const CustomText(
            text: ConstantText.password,
            textStyle: ThemeTextStyle.test,
          ),
          SizedBox(height: 5.h),
          CustomTextField(
            controller: passwordController,
            obscureText: true,
            onChanged: (value) => setState(() => password = value),
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
                onPressed: _onLoginButtonPressed,
                child: const CustomText(text: ConstantText.login),
              ),
              SizedBox(width: 30.w),
              TextButton(
                onPressed: () {},
                child: const CustomText(text: ConstantText.resetPassword),
              ),
            ],
          )
        ],
      ),
    );
  }

  void _onLoginButtonPressed() async {
    if (signInForm.currentState!.validate()) {
      final signUpResult = await firebaseAuthService.signIn(email, password);

      if (!mounted) return;

      if (signUpResult != null &&
          !signUpResult.toString().contains('AuthException:')) {
        logger('SignIn Success');
        Navigator.of(context).pushNamed(AppRoutes.routeToHome);
      } else {
        signInError = signUpResult.toString();
        showSimpleDialog(body: const CustomText(text: 'Error'));
        logger(signUpResult.toString());
      }
    } else {
      logger('Unable to validate sign in form!');
    }
  }
}
