import 'package:flutter/material.dart';
import 'package:minimal_music_player/pages/pages.dart';
import 'package:minimal_music_player/themes/themes.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: lightMode,
      darkTheme: darkMode,
    );
  }
}
