import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:desktop_webview_auth/google.dart';
import 'package:desktop_webview_auth/desktop_webview_auth.dart';

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
            onPressed: signInWithArgs(
              context,
              GoogleSignInArgs(
                clientId: Constants.clientId,
                redirectUri: Constants.redirectUri,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextButton(
                text: ConstantText.resetPassword,
                onPressed: () => Navigator.of(context)
                    .pushNamed(AppRoutes.routeToResetPasswordPage),
              ),
            ],
          ),
          SpacedRow(
            space: 5,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomText(text: ConstantText.forNewUser),
              CustomTextButton(
                key: const Key("route_reg"),
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

  Future<void> Function() signInWithArgs(
          BuildContext context, ProviderArgs args) =>
      () async {
        try {
          final result = await DesktopWebviewAuth.signIn(args);
          final credential =
              GoogleAuthProvider.credential(accessToken: result!.accessToken);
          await FirebaseAuth.instance.signInWithCredential(credential);
          Get.toNamed(AppRoutes.routeToHomePage);
        } catch (e) {
          authorizationErrorDialog(e);
        }
      };
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
          icon: Icons.visibility,
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

  const SignInButton({super.key, required this.signInFormKey});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthorizationBloc, AuthorizationState>(
      builder: (context, state) {
        return CustomButton(
          text: ConstantText.signIn,
          onPressed: () async {
            if (signInFormKey.currentState!.validate()) {
              try {
                await FirebaseAuth.instance.signInWithEmailAndPassword(
                    email: state.email, password: state.password);
                Get.toNamed(AppRoutes.routeToHomePage);
              } catch (e) {
                authorizationErrorDialog(e);
              }
            }
          },
        );
      },
    );
  }
}
