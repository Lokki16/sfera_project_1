import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sfera_project_1/presentation/template/template.dart';

class AuthorizationPage extends StatelessWidget {
  const AuthorizationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultBody(
      title: ConstantText.enterInAccount,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AuthorizationForm(),
          SizedBox(height: 25.h),
          const CustomText(
            text: ConstantText.forNewUser,
            textStyle: ThemeTextSemibold.s20,
          ),
          SizedBox(height: 5.h),
          TextButton(
            child: const CustomText(text: ConstantText.register),
            onPressed: () => Navigator.of(context)
                .pushNamed(AppRoutes.routeToRegistrationPage),
          ),
        ],
      ),
    );
  }
}

class AuthorizationForm extends StatelessWidget {
  AuthorizationForm({super.key});

  final loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: loginFormKey,
      child: SpacedColumn(
        space: 20,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const EmailInput(),
          const PasswordInput(),
          LoginButton(loginFormKey: loginFormKey),
        ],
      ),
    );
  }
}

class EmailInput extends StatelessWidget {
  const EmailInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthorizationBloc, AuthorizationState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return CustomTextField(
          nameField: ConstantText.username,
          icon: Icons.account_box,
          validator: (email) => Validator.loginEmailValidator(email),
          onChanged: (email) => context
              .read<AuthorizationBloc>()
              .add(AuthorizationEmailChanged(email)),
        );
      },
    );
  }
}

class PasswordInput extends StatelessWidget {
  const PasswordInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthorizationBloc, AuthorizationState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return CustomTextField(
          nameField: ConstantText.password,
          icon: Icons.lock,
          obscureText: true,
          validator: (password) => Validator.loginPasswordValidator(password),
          onChanged: (password) => context
              .read<AuthorizationBloc>()
              .add(AuthorizationPasswordChanged(password)),
        );
      },
    );
  }
}

class LoginButton extends StatelessWidget {
  final GlobalKey<FormState> loginFormKey;

  LoginButton({super.key, required this.loginFormKey});

  final authorizationRepository = AuthorizationRepository();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthorizationBloc, AuthorizationState>(
      builder: (context, state) {
        return TextButton(
          style: ButtonStyle(
            backgroundColor: const MaterialStatePropertyAll(ThemeColors.blue2),
            foregroundColor: const MaterialStatePropertyAll(ThemeColors.white),
            padding: MaterialStatePropertyAll(
                EdgeInsets.symmetric(horizontal: 15.w, vertical: 8.h)),
          ),
          onPressed: () async {
            if (loginFormKey.currentState!.validate()) {
              final signUpResult = await authorizationRepository.signIn(
                  state.email, state.password);

              if (signUpResult != null &&
                  !signUpResult.toString().contains('AuthException:')) {
                logger('SignIn Success');
                Get.toNamed(AppRoutes.routeToHomePage);
              } else {
                showSimpleDialog(
                    body: CustomText(
                  text: signUpResult.toString(),
                  textStyle: ThemeTextSemibold.s20,
                ));
                logger(signUpResult.toString());
              }
            }
          },
          child: const CustomText(
            text: ConstantText.login,
            textStyle: ThemeTextSemibold.s20,
          ),
        );
      },
    );
  }
}
