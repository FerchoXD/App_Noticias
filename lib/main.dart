import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app_noticias/Screens/headlines_screen.dart';
import 'package:app_noticias/articles/providers/provider.dart';

void main() async {
  Get.lazyPut(() => Provider());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

//1 - Cada Widget tiene su propio build() y su context.
//2 - BuildContext es el padre del widget devuelto por el build() método.
//En otras palabras, el buildContext del widget calls build()
//no es igual que el contexto de compilación del widget devuelto por build().
  @override
  Widget build(BuildContext context) {
    //GetX es un framework multiplataforma extra-ligero y potente.
    //Combina la gestión de estados de alto rendimiento, la inyección
    //inteligente de dependencias y la gestión de rutas de forma rápida y práctica.
    return GetMaterialApp(
      //elimina el banner (debug)
      debugShowCheckedModeBanner: false,
      title: 'my app fer',
      initialRoute: 'headlines',
      routes: {
        'headlines': (context) => const HeadlinesScreen(),
      },
    );
  }
}
