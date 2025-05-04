import 'package:flutter/material.dart';
import 'package:myapp/pagina_inicio.dart';

void main() {
  runApp(const MiMuebleria());
}

class MiMuebleria extends StatelessWidget {
  const MiMuebleria({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Muebleria',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: PaginaInicio(),
    );
  }
}