import 'package:flutter/material.dart';

void main() => runApp(const SorianaApp());

class SorianaApp extends StatelessWidget {
  const SorianaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFFFF9EB), // Fondo crema
      ),
      home: const CatalogoSoriana(),
    );
  }
}

class CatalogoSoriana extends StatelessWidget {
  const CatalogoSoriana({super.key});

  @override
  Widget build(BuildContext context) {
    const Color verdeSoriana = Color(0xFF4CAF50);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF7C02F), // Amarillo Soriana
        centerTitle: true,
        title: const Text("Soriana Vania", style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: ClipOval(
                child: Image.network(
                  'https://raw.githubusercontent.com/Antonio347Vania/im-genes-para-flutter-6toI-11-Feb-2026/refs/heads/main/logo.jpg',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                _tarjetaSoriana("Manzana Roja", "4.7", "https://raw.githubusercontent.com/Antonio347Vania/im-genes-para-flutter-6toI-11-Feb-2026/refs/heads/main/manzana%20roja.jpg"),
                _tarjetaSoriana("Leche Entera", "5.0", "https://raw.githubusercontent.com/Antonio347Vania/im-genes-para-flutter-6toI-11-Feb-2026/refs/heads/main/leche.jpg"),
                _tarjetaSoriana("Corte de Res", "4.8", "https://raw.githubusercontent.com/Antonio347Vania/im-genes-para-flutter-6toI-11-Feb-2026/refs/heads/main/carne%202.jpg"),
                _tarjetaSoriana("Aceite Aguacate", "4.2", "https://raw.githubusercontent.com/Antonio347Vania/im-genes-para-flutter-6toI-11-Feb-2026/refs/heads/main/Aceite%20Aguacate.jpg"),
                _tarjetaSoriana("Arroz Integral", "4.5", "https://raw.githubusercontent.com/Antonio347Vania/im-genes-para-flutter-6toI-11-Feb-2026/refs/heads/main/Arroz.jpg"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _tarjetaSoriana(String nombre, String estrellas, String urlImg) {
    return Container(
      width: 380, // Ancha según image_5f1ef4.png
      height: 120, // Estructura de image_5ec922.png
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: const Color(0xFF4CAF50), // Verde Soriana
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 8, offset: Offset(0, 4))],
      ),
      child: Stack(
        children: [
          // Imagen a la izquierda
          Positioned(
            left: 15,
            top: 15,
            child: Container(
              width: 90, height: 90,
              decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              child: ClipOval(child: Image.network(urlImg, fit: BoxFit.cover)),
            ),
          ),
          // Texto central
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(nombre, style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                Text("Estrellas ($estrellas)", style: const TextStyle(color: Colors.white70)),
              ],
            ),
          ),
          // Icono externo derecha
          const Positioned(right: 20, top: 45, child: Icon(Icons.open_in_new, color: Colors.white, size: 28)),
        ],
      ),
    );
  }
}