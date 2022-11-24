import 'package:firedart/firedart.dart';
import 'package:sfera_project_1/presentation/template/template.dart';

class AuthorizationPage extends StatelessWidget {
  const AuthorizationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultBody(
      title: ConstantText.enterInAccount,
      child: ListView(children: const [HeaderWidget()]),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 25.h),
          const FormWidget(),
          SizedBox(height: 25.h),
          const CustomText(
            text: ConstantText.forNewUser,
            textStyle: ThemeTextStyle.test,
          ),
          SizedBox(height: 5.h),
          TextButton(
            child: const CustomText(text: ConstantText.register),
            onPressed: () {},
          ),
          SizedBox(height: 25.h),
          const CustomText(
            text: ConstantText.verificationToContinue,
            textStyle: ThemeTextStyle.test,
          ),
          SizedBox(height: 5.h),
          TextButton(
            child: const CustomText(text: ConstantText.passVerification),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  // Todo
  // CollectionReference usersCollection = Firestore.instance.collection('users');

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomText(
          text: ConstantText.username,
          textStyle: ThemeTextStyle.test,
        ),
        SizedBox(height: 5.h),
        CustomTextField(controller: emailController),
        SizedBox(height: 20.h),
        const CustomText(
          text: ConstantText.password,
          textStyle: ThemeTextStyle.test,
        ),
        SizedBox(height: 5.h),
        CustomTextField(controller: passwordController),
        SizedBox(height: 25.h),
        Row(
          children: [
            TextButton(
              style: ButtonStyle(
                backgroundColor:
                    const MaterialStatePropertyAll(ThemeColors.sferaBlueWidget),
                foregroundColor:
                    const MaterialStatePropertyAll(ThemeColors.white),
                padding: MaterialStatePropertyAll(
                  EdgeInsets.symmetric(
                    horizontal: 15.w,
                    vertical: 8.h,
                  ),
                ),
              ),
              onPressed: () =>
                  Navigator.of(context).pushNamed(AppRoutes.routeToHome),
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
    );
  }

  Future signIn() async {
    FirebaseAuth.instance.signIn(
      emailController.text.trim(),
      passwordController.text.trim(),
    );
  }
}
