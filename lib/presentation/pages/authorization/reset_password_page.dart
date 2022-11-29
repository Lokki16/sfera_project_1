import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sfera_project_1/presentation/template/template.dart';

class ResetPasswordPage extends StatelessWidget {
  ResetPasswordPage({super.key});

  final resetPasswordFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return DefaultBody(
      title: ConstantText.signUp,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Form(
            key: resetPasswordFormKey,
            child: SpacedColumn(
              children: [
                const EmailInput(),
                ResetButton(resetPasswordFormKey: resetPasswordFormKey),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ResetButton extends StatelessWidget {
  final GlobalKey<FormState> resetPasswordFormKey;

  const ResetButton({super.key, required this.resetPasswordFormKey});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthorizationBloc, AuthorizationState>(
      builder: (context, state) {
        return CustomButton(
          text: ConstantText.resetPassword,
          onPressed: () async {
            try {
              await FirebaseAuth.instance
                  .sendPasswordResetEmail(email: state.email);
              resetPasswordDialog();
            } catch (e) {
              authorizationErrorDialog(e);
            }
          },
        );
      },
    );
  }
}
