import 'package:flutter/material.dart';
import 'package:gladnomushdeswitcher/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.light;

  void _alterarTema() {
    //setstate recarrega a tela
    setState(() {
      _themeMode = _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: _themeMode,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.blue.shade900),
      ),

      //darkTheme
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red.shade900),
      
      ),
      home: HomeScreen(
        temaEscuro: _themeMode == ThemeMode.dark,
        onThemeChanged: () => _alterarTema(),
      ),
    );
  }
}

