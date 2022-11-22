import 'package:flutter/material.dart';
import 'auth_widget.dart';
import 'package:sfera_project_1/presentation/template/template.dart';



class Auth extends StatelessWidget {
  const Auth({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: const Color.fromRGBO(3, 37, 65, 1),
          ),
      ),
      home: AuthWidget(),
    );
  }
}
