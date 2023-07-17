import 'package:flutter/material.dart';
import '../colors/colors.dart';
import '../pages/Password_page.dart';
import '../pages/Registrar_page.dart';

// ---- Clase para el boton general principal ----
class BtnPrimaery extends StatelessWidget {
  //CREACION DE PARAMETROS / VARIABLES
  final String textButton;
  final Color colorBox;
  final BoxBorder? border;
  final void Function()? onPressed;
  const BtnPrimaery(
      {super.key,
      required this.textButton,
      required this.colorBox,
      this.border,
      this.onPressed});

  //IMPLEMENTACION DE VARIABLES
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colorBox, // Color del campo del propio input
        border: border, // Define si va a tener un borde o no dependiendo si se le agrega como parametro
        borderRadius: BorderRadius.circular(10), // Borde del campo
      ),
      child: MaterialButton(
        minWidth: double.infinity, // largo del botonque abarque toda la pantalla
        height: 60, // Ancho del boton

        onPressed: onPressed, // Evento al presionar el boton

        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),

        // Agregar texto dentro del boton
        child: Text(
          textButton,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

// ---- Clase para un boton estilo link ----
class BotonLink extends StatelessWidget {
  //CREACION DE PARAMETROS / VARIABLES
  final String textoLink;
  final void Function()? onPressed;
  const BotonLink(
      {super.key,
      required this.textoLink,
      this.onPressed});

  //IMPLEMENTACION DE VARIABLES
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed, // Evento al presionar el boton
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all( Colors.transparent) // Define el fondo del boton transparente (sin color)
          ),

      // ---- Manejo del texto ----
      child: Text(
        textoLink,
        style: TextStyle(
          fontSize: 18, // Tamaño del texto
          color: CustomColors.colorVerdePantano, // color del texto
          decoration: TextDecoration.underline, // Dejar el texto subrayado
        ),
      ),
    );
  }
}

// ---- Widget para un boton transparente para los links ----
 /* Widget buttonLink(String textoLink, context) {
    return TextButton(
      onPressed: () {
        
        // Condición para manejar los cambios de pantalla
        if (textoLink == "Olvide mi contraseña") {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PasswordPage()),
          );
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => RegisterPage()),
          );
        }
        
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PasswordPage()),
        );
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              Colors.transparent) // Define el fondo transparente
          ),
      child: Text(
        textoLink, // Agrega el texto
        style: TextStyle(
          fontSize: 18, // Tamaño del texto
          color: CustomColors.colorLink, // Color del texto
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }*/
