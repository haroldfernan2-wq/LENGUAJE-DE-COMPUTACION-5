import 'package:flutter/material.dart';

// Definimos la pantalla principal como un StatelessWidget cumpliendo con las buenas prácticas
class HomeScreen extends StatelessWidget {
  // Aplicamos el parámetro key en el constructor
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Establecemos el color de fondo blanco para la pantalla
      backgroundColor: Colors.white,

      // AppBar personalizado con mayor altura y bordes redondeados
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(85), // Altura de la barra
        child: SafeArea(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: const Color(0xFF1D3557), // Color azul oscuro institucional
              borderRadius: BorderRadius.circular(16), // Bordes redondeados
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Título de la barra en color blanco y negrita
                  const Text(
                    'Hola UAE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // Botón de ícono de información a la derecha
                  IconButton(
                    icon: const Icon(
                      Icons.info_outline,
                      color: Colors.white,
                      size: 28,
                    ),
                    onPressed: () {
                      // Acción opcional para el botón de información
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

      // Cuerpo de la aplicación centrado en la pantalla
      body: Center(
        child: Column(
          // Centramos los elementos verticalmente dentro de la columna
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Texto principal de la interfaz
            const Text(
              'Hola UAE',
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
                color: Color(0xFF152238),
              ),
            ),

            const SizedBox(height: 8),

            // Subtítulo descriptivo de referencia
            const Text(
              'Scaffold · AppBar + body',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 32),

            // Botón "Saludar" estilizado con ElevatedButton y bordes redondeados
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF28823A), // Color verde institucional
                foregroundColor: Colors.white, // Color del texto interno
                padding: const EdgeInsets.symmetric(
                  horizontal: 48,
                  vertical: 16,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // Bordes redondeados
                ),
                elevation: 2,
              ),
              onPressed: () {
                // Al presionar el botón, mostramos el SnackBar limpio sin el botón "Cerrar"
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    // Fondo oscuro elegante para el SnackBar
                    backgroundColor: const Color(0xFF1B2432),
                    // Comportamiento flotante con márgenes y bordes redondeados
                    behavior: SnackBarBehavior.floating,
                    margin: const EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    // Mensaje requerido con texto en verde claro/menta
                    content: const Text(
                      '¡Bienvenido a la UAE!',
                      style: TextStyle(
                        color: Color(0xFF6EE7B7),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    // Duración estándar para que desaparezca solo después de 3 segundos
                    duration: const Duration(seconds: 3),
                  ),
                );
              },
              child: const Text(
                'Saludar',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}