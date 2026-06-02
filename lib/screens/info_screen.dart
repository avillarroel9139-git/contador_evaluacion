import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('¡Este soy yo! ;-)'),
        backgroundColor: const Color.fromARGB(255, 0, 195, 255),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/tiktok_logo.png', height: 100),

              const SizedBox(height: 40),

              ClipOval(
                child: Image.asset(
                  'assets/foto_perfil.png',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(height: 40),

              const Text(
                'Aplicación creada por:',
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 15),

              Stack(
                alignment: Alignment.center,
                children: [
                  Transform.translate(
                    offset: const Offset(-1.5, -1.5),
                    child: const Text(
                      'Anyer David Villarroel Ramos\nV-30.209.139',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.cyanAccent,
                      ),
                    ),
                  ),

                  Transform.translate(
                    offset: const Offset(1.5, 1.5),
                    child: const Text(
                      'Anyer David Villarroel Ramos\nV-30.209.139',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent,
                      ),
                    ),
                  ),

                  const Text(
                    'Anyer David Villarroel Ramos\nV-30.209.139',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 30, 30, 30),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              Transform.translate(
                offset: const Offset(0.0, 0.0),
                child: const Text(
                  'Estudiante de UNIMAR\nEvaluación Práctica - Prof. Hector Luna',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, height: 1.4),
                ),
              ),

              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
