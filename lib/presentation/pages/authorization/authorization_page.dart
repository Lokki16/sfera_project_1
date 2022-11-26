import 'package:flutter_bloc/flutter_bloc.dart';
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
            AuthorizationForm(),
            SizedBox(height: 25.h),
            const CustomText(
              text: ConstantText.forNewUser,
              textStyle: ThemeTextStyle.test,
            ),
            SizedBox(height: 5.h),
            TextButton(
              child: const CustomText(text: ConstantText.register),
              onPressed: () => Navigator.of(context)
                  .pushNamed(AppRoutes.routeToRegistration),
            ),
            SizedBox(height: 25.h),
          ],
        ),
      ),
    );
  }
}

class AuthorizationForm extends StatelessWidget {
  AuthorizationForm({super.key});

  final signInForm = GlobalKey<FormState>();
  final firebaseAuthService = AuthorizationRepository();

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
          BlocBuilder<AuthorizationBloc, AuthorizationState>(
            buildWhen: (previous, current) => previous.email != current.email,
            builder: (context, state) {
              return CustomTextField(
                onChanged: (email) => context
                    .read<AuthorizationBloc>()
                    .add(AuthorizationEmailChanged(email)),
                validator: (email) => Validator.loginEmailValidator(email),
                icon: const Icon(Icons.account_box, color: Colors.white),
              );
            },
          ),
          SizedBox(height: 20.h),
          const CustomText(
            text: ConstantText.password,
            textStyle: ThemeTextStyle.test,
          ),
          SizedBox(height: 5.h),
          BlocBuilder<AuthorizationBloc, AuthorizationState>(
            buildWhen: (previous, current) =>
                previous.password != current.password,
            builder: (context, state) {
              return CustomTextField(
                obscureText: true,
                onChanged: (password) => context
                    .read<AuthorizationBloc>()
                    .add(AuthorizationPasswordChanged(password)),
                validator: (password) =>
                    Validator.loginPasswordValidator(password),
                icon: const Icon(Icons.lock, color: Colors.white),
              );
            },
          ),
          SizedBox(height: 25.h),
          Row(
            children: [
              BlocBuilder<AuthorizationBloc, AuthorizationState>(
                builder: (context, state) {
                  return TextButton(
                    style: ButtonStyle(
                      backgroundColor: const MaterialStatePropertyAll(
                          ThemeColors.sferaBlueWidget),
                      foregroundColor:
                          const MaterialStatePropertyAll(ThemeColors.white),
                      padding: MaterialStatePropertyAll(
                        EdgeInsets.symmetric(horizontal: 15.w, vertical: 8.h),
                      ),
                    ),
                    onPressed: () async {
                      if (signInForm.currentState!.validate()) {
                        final signUpResult = await firebaseAuthService.signIn(
                            state.email, state.password);

                        if (signUpResult != null &&
                            !signUpResult
                                .toString()
                                .contains('AuthException:')) {
                          logger('SignIn Success');
                          Navigator.of(context)
                              .pushNamed(AppRoutes.routeToHome);
                        } else {
                          showSimpleDialog(
                              body: CustomText(text: signUpResult.toString()));
                          logger(signUpResult.toString());
                        }
                      } else {
                        logger('Unable to validate sign in form!');
                      }
                    },
                    child: const CustomText(text: ConstantText.login),
                  );
                },
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
}
