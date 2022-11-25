import 'package:sfera_project_1/presentation/template/template.dart';

enum PasswordValidationError { empty }

class PasswordModel extends FormzInput<String, PasswordValidationError> {
  const PasswordModel.pure() : super.pure('');
  const PasswordModel.dirty([super.value = '']) : super.dirty();

  @override
  PasswordValidationError? validator(String? value) {
    return value?.isNotEmpty == true ? null : PasswordValidationError.empty;
  }
}
