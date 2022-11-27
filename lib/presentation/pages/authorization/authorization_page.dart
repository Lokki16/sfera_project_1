import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sfera_project_1/presentation/template/template.dart';

class AuthorizationPage extends StatelessWidget {
  const AuthorizationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultBody(
      title: ConstantText.signIn,
      back: false,
      child: SpacedColumn(
        space: 25,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AuthorizationForm(),
          CustomButton(
            text: 'Авторизироваться с помощью Google',
            onPressed: () {},
          ),
          SpacedRow(
            space: 5,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomText(
                text: ConstantText.forNewUser,
                textStyle: ThemeTextSemibold.s20,
              ),
              CustomTextButton(
                text: ConstantText.register,
                onPressed: () => Navigator.of(context)
                    .pushNamed(AppRoutes.routeToRegistrationPage),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AuthorizationForm extends StatelessWidget {
  AuthorizationForm({super.key});

  final signInFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: signInFormKey,
      child: SpacedColumn(
        children: [
          const EmailInput(),
          const PasswordInput(),
          SignInButton(signInFormKey: signInFormKey),
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
          nameField: ConstantText.email,
          icon: Icons.account_box,
          validator: (email) => Validator.signInEmailValidator(email),
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
          validator: (password) => Validator.signInPasswordValidator(password),
          onChanged: (password) => context
              .read<AuthorizationBloc>()
              .add(AuthorizationPasswordChanged(password)),
        );
      },
    );
  }
}

class SignInButton extends StatelessWidget {
  final GlobalKey<FormState> signInFormKey;

  SignInButton({super.key, required this.signInFormKey});

  final authorizationRepository = AuthorizationRepository();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthorizationBloc, AuthorizationState>(
      builder: (context, state) {
        return CustomButton(
          text: ConstantText.signIn,
          onPressed: () async {
            if (signInFormKey.currentState!.validate()) {
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
                  ),
                );
                logger(signUpResult);
              }
            }
          },
        );
      },
    );
  }
}
