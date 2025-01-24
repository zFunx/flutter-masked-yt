import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class YTEmbed extends StatefulWidget {
  const YTEmbed({super.key});

  @override
  State<YTEmbed> createState() => _YTEmbedState();
}

class _YTEmbedState extends State<YTEmbed> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    // Replace with your own video ID
    const String videoId = 'YrHsw4Oja7w';

    _controller = YoutubePlayerController.fromVideoId(
      videoId: videoId,
      autoPlay: false,
      params: const YoutubePlayerParams(showFullscreenButton: true,),
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: YoutubePlayer(
        controller: _controller,
        aspectRatio: 16 / 9,
      ),
    );
  }
}
