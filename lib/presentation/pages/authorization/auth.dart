import 'package:sfera_project_1/presentation/template/template.dart';

class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('login to your accaunt')),
      body: ListView(
        children: [
          HeaderWidget(),
        ],
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = const TextStyle(
      fontSize: 16,
      color: Colors.black,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: 25),
          _FormWidget(),
          SizedBox(height: 25),
          Text(
            'Для того, чтобы продолжить нужно авторизироваться',
            style: textStyle,
          ),
        ],
      ),
    );
  }
}

class _FormWidget extends StatelessWidget {
  const _FormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = const TextStyle(
      fontSize: 16,
      color: Colors.black,
    );
    final textFieldDecoratior = const InputDecoration(
      border: OutlineInputBorder(),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Имя пользователя',
          style: textStyle,
        ),
        TextField(
          decoration: textFieldDecoratior,
        ),
        Text(
          'Пароль',
          style: textStyle,
        ),
        TextField(
          decoration: textFieldDecoratior,
        ),
      ],
    );
  }
}
