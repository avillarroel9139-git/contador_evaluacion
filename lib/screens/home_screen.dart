import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Nuestra variable de estado (el contador inicializado en 0)
  int counter = 0;

  // Funciones simples para modificar el estado (Método KISS)
  void _increase() => setState(() => counter++);
  void _decrease() => setState(() => counter--);
  void _reset() => setState(() => counter = 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Contador de Racha de TikTok de mi novia',
        ), // 🎨 Cambia el título a tu estilo
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        foregroundColor: Colors.white,
        actions: [
          // Botón en la esquina superior derecha para navegar a la InfoScreen
          IconButton(
            icon: const Icon(Icons.info_outline, size: 28),
            onPressed: () {
              Navigator.pushNamed(context, '/info');
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Total de dias de racha:',
              style: TextStyle(
                fontSize: 18,
                color: Colors.blueGrey,
                letterSpacing: 1.2,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              '$counter',
              // El número gigante central
              style: const TextStyle(fontSize: 90, fontWeight: FontWeight.w100),
            ),
          ],
        ),
      ),

      // El profesor especificó que los botones pueden ir dentro del floatingActionButton
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // Botón Restar (-1)
          FloatingActionButton(
            heroTag: 'btn_decrement',
            onPressed: _decrease,
            backgroundColor: Colors.redAccent,
            foregroundColor: Colors.white,
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 12),

          // Botón Resetear (0)
          FloatingActionButton(
            heroTag: 'btn_reset',
            onPressed: _reset,
            backgroundColor: Colors.amber,
            foregroundColor: Colors.black,
            child: const Icon(Icons.refresh),
          ),
          const SizedBox(width: 12),

          // Botón Sumar (+1)
          FloatingActionButton(
            heroTag: 'btn_increment',
            onPressed: _increase,
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
