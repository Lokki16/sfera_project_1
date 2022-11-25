import 'package:sfera_project_1/presentation/template/template.dart';

enum EmailValidationError { empty }

class EmailModel extends FormzInput<String, EmailValidationError> {
  const EmailModel.pure() : super.pure('');
  const EmailModel.dirty([super.value = '']) : super.dirty();

  @override
  EmailValidationError? validator(String? value) {
    return value?.isNotEmpty == true ? null : EmailValidationError.empty;
  }
}
