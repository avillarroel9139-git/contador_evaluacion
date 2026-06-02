import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Acerca del Dev'),
        backgroundColor: const Color.fromARGB(255, 5, 8, 8),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.person,
                size: 90,
                color: Color.fromARGB(255, 7, 8, 8),
              ),
              const SizedBox(height: 25),

              const Text(
                'Aplicación creada por:',
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 5),

              // ✍️ AQUÍ PONES TU NOMBRE REAL
              const Text(
                'Anyer Villarroel',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 15),

              // ✍️ AQUÍ PONES TUS DATOS DE LA UNIVERSIDAD
              const Text(
                'Estudiante de UNIMAR\nEvaluación Práctica - Prof. Hector Luna',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, height: 1.4),
              ),
              const SizedBox(height: 40),

              ElevatedButton.icon(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back_ios_new, size: 18),
                label: const Text('Regresar al Contador'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
