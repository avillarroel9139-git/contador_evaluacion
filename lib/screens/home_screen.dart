// lib/screens/home_screen.dart (Actualizado)

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;

  void _increase() => setState(() => counter++);
  void _decrease() => setState(() => counter--);
  void _reset() => setState(() => counter = 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador de Racha de TikTok\ncon mi novia'),
        backgroundColor: const Color.fromARGB(255, 255, 101, 101),
        foregroundColor: Colors.white,
        actions: [
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
            Image.asset('assets/tiktok_logo.png', height: 100),

            const SizedBox(height: 25),

            const Text(
              'Total de dias de racha:',
              style: TextStyle(
                fontSize: 18,
                color: Colors.blueGrey,
                letterSpacing: 1.2,
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/fuego_racha.png', height: 60),

                const SizedBox(width: 30),

                Text(
                  '$counter',
                  style: const TextStyle(
                    fontSize: 90,
                    fontWeight: FontWeight.w100,

                    color: Color.fromARGB(255, 255, 101, 101),
                  ),
                ),

                const SizedBox(width: 30),

                Image.asset('assets/corazon_fuego.png', height: 60),
              ],
            ),
          ],
        ),
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'btn_decrement',
            onPressed: _decrease,
            backgroundColor: const Color.fromARGB(255, 255, 97, 97),
            foregroundColor: Colors.white,
            child: const Icon(Icons.remove),
          ),

          const SizedBox(width: 12),
          FloatingActionButton(
            heroTag: 'btn_reset',
            onPressed: _reset,
            backgroundColor: const Color.fromARGB(255, 0, 0, 0),
            foregroundColor: const Color.fromARGB(255, 255, 255, 255),
            child: const Icon(Icons.refresh),
          ),

          const SizedBox(width: 12),
          FloatingActionButton(
            heroTag: 'btn_increment',
            onPressed: _increase,
            backgroundColor: const Color.fromARGB(255, 0, 183, 255),
            foregroundColor: Colors.white,
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
