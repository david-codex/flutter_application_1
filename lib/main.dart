import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/loginpage.dart';
import 'package:flutter_application_1/pages/registerPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      home:
          MyAppHomePage(), // Usamos un nuevo widget para envolver la navegación
    );
  }
}

class MyAppHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('bienvenidos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => loginPage()),
                );
              },
              child: Text('Ingresar'),
            ),
            SizedBox(height: 20), // Espacio entre los botones
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage()),
                );
                // Lógica para la página de registro
              },
              child: Text('Registro'),
            ),
          ],
        ),
      ),
    );
  }
}
