import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:player_test/utils/admob_helper.dart';

class BetterPlayerPage extends StatefulWidget {
  final String? m3u8Link;
  const BetterPlayerPage({required this.m3u8Link, Key? key}) : super(key: key);

  @override
  State<BetterPlayerPage> createState() => _BetterPlayerPageState();
}

class _BetterPlayerPageState extends State<BetterPlayerPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Better Player'),
      ),
      body: AspectRatio(
        aspectRatio: 16 / 9,
        child: BetterPlayer.network(
          widget.m3u8Link ?? '',
          betterPlayerConfiguration: const BetterPlayerConfiguration(
            deviceOrientationsAfterFullScreen: [
              DeviceOrientation.portraitUp,
              DeviceOrientation.portraitDown
            ],
            controlsConfiguration: BetterPlayerControlsConfiguration(
              enablePlaybackSpeed: false,
              enableSubtitles: false,
              enablePip: false,
              enableAudioTracks: false,
            ),
            aspectRatio: 16 / 9,
            fit: BoxFit.contain,
            autoPlay: true,
          ),
        ),
      ),
    );
  }
}
