import 'package:flutter/material.dart';
import 'package:flutter_application_5/Componant/Calculatrice.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App OWO',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 18, 255, 117)),
        useMaterial3: true,
      ),
      home: const Calculatrice(title: 'Un monde de OWO',description: "Compteur",),
    );
  }
}