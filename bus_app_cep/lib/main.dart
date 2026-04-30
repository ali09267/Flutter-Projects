import 'package:flutter/material.dart';
import 'pages/bus_display.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bus App',
      initialRoute: '/',
      routes: {'/': (context) => BusListScreen()},
      debugShowCheckedModeBanner: false,
    );
  }
}
