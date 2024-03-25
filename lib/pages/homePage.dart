import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String nickname;

  const HomePage({Key? key, required this.nickname}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bienvenido, $nickname',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cerrar sesión'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HomePage(
        nickname:
            'Nombre de Usuario'), // Cambia 'Nombre de Usuario' por el valor deseado
  ));
}
