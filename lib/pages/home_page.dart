import 'package:flutter/material.dart';
import 'package:minimal_music_player/components/my_drawer.dart';
import 'package:minimal_music_player/model/playlist_provider.dart';
import 'package:minimal_music_player/model/song.dart';
import 'package:minimal_music_player/pages/pages.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final dynamic playlistProvider;

  @override
  void initState() {
    super.initState();
    playlistProvider = Provider.of<PalyListPorvider>(context, listen: false);
  }

  void goToSong(int songIndex) {
    playlistProvider.currentSongIndex = songIndex;

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const SongPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      appBar: AppBar(
        title: const Text("P L A Y L I S T"),
      ),
      drawer: const MyDrawer(),
      body: Consumer<PalyListPorvider>(builder: (context, value, child) {
        final List<Song> playlist = value.playlist;
        return ListView.builder(
            itemCount: playlist.length,
            itemBuilder: ((context, index) {
              final Song song = playlist[index];
              return ListTile(
                title: Text(song.songName),
                subtitle: Text(song.artistName),
                leading: Image.asset(song.albumArtImagePath),
                onTap: () => goToSong(index),
              );
            }));
      }),
    );
  }
}
