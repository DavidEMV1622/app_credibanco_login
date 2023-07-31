import 'package:app_credibanco_login/src/pages/Change_password.dart';
import 'package:app_credibanco_login/src/pages/Editar_usuario_page.dart';
import 'package:app_credibanco_login/src/pages/Login_page.dart';
import 'package:app_credibanco_login/src/pages/Password_page.dart';
import 'package:app_credibanco_login/src/pages/Registrar_page.dart';
import 'package:app_credibanco_login/src/pages/VisualizarUsuario_page.dart';
import 'package:app_credibanco_login/src/pages/inputValidate_page.dart';
import 'package:flutter/material.dart';

import 'assets/pop-up.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // widget principal
      home: Center(
        //child: LoginPage(),
        //child: InputValidatePage(),
        //child: PasswordPage(),
        //child: UpdateUserPage(),
        child: RegisterPage(),
        //child: PopUpsError(),
        //child: ViewUserDataPage(),
      ),
    );
  }
}
