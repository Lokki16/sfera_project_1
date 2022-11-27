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
            text: ConstantText.googleSignIn,
            onPressed: () {},
          ),
          SpacedRow(
            space: 5,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomText(text: ConstantText.forNewUser),
              CustomTextButton(
                text: ConstantText.signUp,
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
          onChanged: (email) =>
              context.read<AuthorizationBloc>().add(EmailChange(email)),
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
          onChanged: (password) =>
              context.read<AuthorizationBloc>().add(PasswordChange(password)),
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
                Get.toNamed(AppRoutes.routeToHomePage);
              } else {
                showSimpleDialog(
                  titleTopPadding: 16,
                  titleBottomPadding: 10,
                  contentTopPadding: 10,
                  contentBottomPadding: 16,
                  contentHorizontalPadding: 10,
                  title: const SpacedRow(
                    space: 2,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomIcon(
                        icon: Icons.error,
                        color: ThemeColors.red,
                        size: 20,
                      ),
                      CustomText(text: ConstantText.error),
                    ],
                  ),
                  body: CustomText(text: signUpResult.toString()),
                );
              }
            }
          },
        );
      },
    );
  }
}
