import 'package:app_credibanco_login/src/assets/buttons.dart';
import 'package:app_credibanco_login/src/assets/input.dart';
import 'package:app_credibanco_login/src/assets/titulo.dart';
import 'package:app_credibanco_login/src/pages/Login_page.dart';
import 'package:app_credibanco_login/src/pages/SendCodePassword.dart';
import 'package:flutter/material.dart';
import '../assets/fuentesText/fuentes.dart';
import 'Password_page.dart';

import '../colors/colors.dart';

class RegisterPage extends StatefulWidget {
  @override
  createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // Variable para el estilo del texto
  final TextStyle _estiloTexto = new TextStyle(fontSize: 25);
  // Variable de tipo boolean para icono de si o no mostrar contrasenia
  bool passenable = true;

  @override
  Widget build(BuildContext context) {
    // Plantilla principal "Scaffold"
    return Scaffold(
      // Barra principal de navegación "AppBar"
      appBar: AppBar(
        backgroundColor: CustomColors
            .colorBlanco, // Color del AppBar por medio de la clase "CustomColors"
      ),

      // ---- Cuerpo o contenido de la aplicación "body" ----
      body: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: 30.0,
            vertical: 25.0,
          ),
          children: <Widget>[
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              tituloEncabezadoUno("Registrate"),
              InputText(
                textoInput: "Nombre",
                inputType: TextInputType.name,
              ),
              InputText(
                textoInput: "Apellido",
                inputType: TextInputType.name,
              ),
              InputText(
                textoInput: "Correo",
                inputType: TextInputType.emailAddress,
              ),
              InputText(
                textoInput: "Telefono",
                inputType: TextInputType.number,
              ),
              PasswordInput(textoContrasenia: "Contraseña:"),
              PasswordInput(textoContrasenia: "Confirmar contraseña:"),
              SizedBox(
                height: 25.0,
              ),
              BtnPrimaery(
                textButton: "Enviar codigo",
                colorBox: Color.fromRGBO(255, 182, 0, 1),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SendCodePassword())),
              ),
            ]),
            SizedBox(
              height: 25.0,
            ),
            Row(children: <Widget>[
              Expanded(
                  child: Divider(
                color: CustomColors.colorNegro,
                thickness: 1,
              )),
              Container(
                child: Text("O"),
                margin: EdgeInsets.symmetric(horizontal: 15),
              ),
              Expanded(
                  child: Divider(
                color: CustomColors.colorNegro,
                thickness: 1,
              )),
            ]),
            SizedBox(
              height: 15.0,
            ),
            BotonLink(
                textoLink: "¿Ya tienes cuenta?, click aquí",
                onPressed: () => Navigator.pop(context)),
          ]),
    );
  }

  Widget _buttonLink(String textoLink) {
    return TextButton(
      onPressed: () {
        // Condición para manejar los cambios de pantalla
        if (textoLink == "¿Ya tienes cuenta?, click aqui") {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          );
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PasswordPage()),
          );
        }
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              Colors.transparent) // Define el fondo transparente
          ),
      child: Text(
        textoLink, // Agrega el texto
        style: TextStyle(
          fontSize: 18, // Tamaño del texto
          color: CustomColors.colorVerdePantano, // Color del texto
        ),
      ),
    );
  }
}
