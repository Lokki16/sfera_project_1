import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sfera_project_1/presentation/template/template.dart';

class RegistrationPage extends StatelessWidget {
  RegistrationPage({super.key});

  final signUpFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return DefaultBody(
      title: ConstantText.signUp,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Form(
            key: signUpFormKey,
            child: SpacedColumn(
              children: [
                const EmailInput(key: Key("emailfield")),
                const PasswordInput(key: Key("passwordfield")),
                SignUpButton(
                  key: const Key("signup_button"),
                  signUpFormKey: signUpFormKey,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SignUpButton extends StatelessWidget {
  final GlobalKey<FormState> signUpFormKey;

  const SignUpButton({super.key, required this.signUpFormKey});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthorizationBloc, AuthorizationState>(
      builder: (context, state) {
        return CustomButton(
          text: ConstantText.signUp,
          onPressed: () async {
            try {
              await FirebaseAuth.instance.createUserWithEmailAndPassword(
                  email: state.email, password: state.password);
              Get.toNamed(AppRoutes.routeToHomePage);
            } catch (e) {
              authorizationErrorDialog(e);
            }
          },
        );
      },
    );
  }
}
