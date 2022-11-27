import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sfera_project_1/presentation/template/template.dart';

class RegistrationPage extends StatelessWidget {
  RegistrationPage({super.key});

  final signUpFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return DefaultBody(
      title: 'Sign up',
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Form(
            key: signUpFormKey,
            child: SpacedColumn(
              children: [
                const EmailInput(),
                const PasswordInput(),
                SignUpButton(signUpFormKey: signUpFormKey),
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

  SignUpButton({super.key, required this.signUpFormKey});

  final authorizationRepository = AuthorizationRepository();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthorizationBloc, AuthorizationState>(
      builder: (context, state) {
        return CustomButton(
          text: 'Sign up',
          onPressed: () async {
            if (signUpFormKey.currentState!.validate()) {
              final signUpResult = await authorizationRepository.signUp(
                  state.email, state.password);

              if (signUpResult != null &&
                  !signUpResult.toString().contains('AuthException:')) {
                logger('SignIn Success');
                Get.toNamed(AppRoutes.routeToHomePage);
              }
            }
          },
        );
      },
    );
  }
}
