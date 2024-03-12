import 'package:flutter/material.dart';
import 'package:minimal_music_player/model/song.dart';

class PalyListPorvider extends ChangeNotifier {
  final List<Song> _playlist = [
    Song(
      songName: "songName1",
      artistName: "artistName1",
      albumArtImagePath: "assets/images/album-1.jpg",
      audioPath: "assets/audio/Colorful-Flowers.mp3",
    ),
    Song(
      songName: "songName2",
      artistName: "artistName2",
      albumArtImagePath: "assets/images/album-2.jpeg",
      audioPath: "assets/audio/Colorful-Flowers.mp3",
    ),
    Song(
      songName: "songName3",
      artistName: "artistName3",
      albumArtImagePath: "assets/images/album-3.jpeg",
      audioPath: "assets/audio/Colorful-Flowers.mp3",
    ),
  ];

  int? _currentSongIndex;

  List<Song> get playlist => _playlist;
  int? get currentSongIndex => _currentSongIndex;

  set currentSongIndex(int? newIndex) {
    _currentSongIndex = newIndex;
    notifyListeners();
  }
}
