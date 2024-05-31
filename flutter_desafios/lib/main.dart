import 'package:flutter/material.dart';
import 'package:flutter_desafios/mockup_money.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutterando Masterclass Turma 10",
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(),
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      themeMode: ThemeMode.dark,
      home: const MockupMoney(),
    );
  }
}
