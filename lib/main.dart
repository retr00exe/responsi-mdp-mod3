import 'package:flutter/material.dart';
import 'package:mod3_kel08/screens/home.dart';
import 'package:mod3_kel08/screens/detail.dart';

void main() async {
  runApp(const AnimeApp());
}

class AnimeApp extends StatelessWidget {
  const AnimeApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Furniture app',
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xff524F49)),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/detail': (context) => const DetailPage(),
      },
    );
  }
}
