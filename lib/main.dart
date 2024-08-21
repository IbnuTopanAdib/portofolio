import 'package:flutter/material.dart';
import 'package:my_portofolio/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portofolio Ibnu',
      theme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}
