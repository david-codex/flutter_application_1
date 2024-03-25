import 'package:flutter/material.dart';
import 'homepage.dart';

class loginPage extends StatelessWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _header(),
              _inputFields(context),
              _forgotPassword(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _header() {
    return Column(
      children: [
        Text(
          "INICIO DE SESIÓN",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        Text("Ingrese credenciales"),
      ],
    );
  }

  Widget _inputFields(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: "USUARIO",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
              borderSide: BorderSide.none,
            ),
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
            prefixIcon: Icon(Icons.person_outline),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: "Contraseña",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
              borderSide: BorderSide.none,
            ),
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
            prefixIcon: Icon(Icons.lock_outline),
          ),
          obscureText: true,
        ),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed: () {
            // Navegar a HomePage al presionar el botón "INICIAR"
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(
                  nickname:
                      'Nombre de Usuario', // Aquí debes pasar el nombre de usuario ingresado en el TextField
                ),
              ),
            );
          },
          child: Text(
            "INICIAR",
            style: TextStyle(fontSize: 20),
          ),
          style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
            padding: EdgeInsets.symmetric(vertical: 16),
          ),
        ),
      ],
    );
  }

  Widget _forgotPassword() {
    return TextButton(
      onPressed: () {
        // Coloca la lógica para olvidar contraseña aquí
      },
      child: Text(
        "¿Olvidaste tu contraseña?",
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: loginPage(),
  ));
}
