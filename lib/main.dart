import 'package:flutter/material.dart';
// Importamos la pantalla principal desde su ubicación en presentation/screens/
import 'presentation/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // Aplicamos el parámetro key en el constructor según las buenas prácticas
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Requisito 1: Ocultar el banner de desarrollo (debug)
      debugShowCheckedModeBanner: false,
      // Título de la aplicación
      title: 'Taller UAE',
      // Definimos la pantalla inicial de la app
      home: HomeScreen(),
    );
  }
}