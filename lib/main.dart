import 'package:flutter/material.dart';
import 'package:minimal_music_player/app/main_app.dart';
import 'package:minimal_music_player/model/playlist_provider.dart';
import 'package:minimal_music_player/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ChangeNotifierProvider(create: (context) => PalyListPorvider()),
      ],
      child: const MainApp(),
    ),
  );
}
