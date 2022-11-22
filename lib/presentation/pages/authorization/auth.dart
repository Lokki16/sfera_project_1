import 'dart:ffi';

import 'package:sfera_project_1/presentation/template/template.dart';

class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Войти в аккаунт')),
      body: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const HeaderWidget(),
        ],
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_declarations
    final textStyle = const TextStyle(
      fontSize: 16,
      color: Colors.white,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 25),
          const _FormWidget(),
          const SizedBox(height: 25),
          Text(
            'Если вы новый пользователь, то необходимо пройти регистрацию',
            style: textStyle,
          ),
          const SizedBox(height: 5,),
          TextButton(onPressed: (){}, child: const Text('Зарегестрироваться')),
          const SizedBox(height: 25,),
          Text(
            'Для того, чтобы продолжить нужно пройти верификацию',
            style: textStyle,
          ),
          const SizedBox(height: 5,),
          TextButton(onPressed: (){}, child: const Text('Пройти верификацию')),
        ],
      ),
    );
  }
}

class _FormWidget extends StatefulWidget {
  const _FormWidget({super.key});

  @override
  State<_FormWidget> createState() => __FormWidgetState();
}

class __FormWidgetState extends State<_FormWidget> {

void auth() {

}

void resetPassword() {
  
}

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_declarations
    final textStyle = const TextStyle(
      fontSize: 16,
      color: Colors.white,
    );
    // ignore: prefer_const_declarations
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
        const SizedBox(height: 5,),
        TextField(
          decoration: textFieldDecoratior,
        ),
        const SizedBox(height: 20,),
        Text(
          'Пароль',
          style: textStyle,
        ),
        const SizedBox(height: 5,),
        TextField(
          decoration: textFieldDecoratior,
          obscureText: true,
        ),
        const SizedBox(height: 25,),
        Row(
          children: [
            TextButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 3, 64, 113)),
                foregroundColor: MaterialStatePropertyAll(Colors.white),
                padding: MaterialStatePropertyAll(EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 8,
                  ),
                ),
              ),
              onPressed: () {},
              child: const Text('Войти'),
              ),
              const SizedBox(width: 30,),
              TextButton(
              onPressed: () {},
              child: const Text('Сбросить пароль'),
              ),
          ],
        )
      ],
    );
  }
}




