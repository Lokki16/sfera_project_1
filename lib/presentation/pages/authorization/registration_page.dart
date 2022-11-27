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
          text: ConstantText.signUp,
          onPressed: () async {
            if (signUpFormKey.currentState!.validate()) {
              final signUpResult = await authorizationRepository.signUp(
                  state.email, state.password);

              if (signUpResult != null &&
                  !signUpResult.toString().contains('AuthException:')) {
                Get.toNamed(AppRoutes.routeToHomePage);
              }
            }
          },
        );
      },
    );
  }
}
