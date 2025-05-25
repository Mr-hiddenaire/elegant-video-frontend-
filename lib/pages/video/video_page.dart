import 'package:flutter/material.dart';
import 'package:better_player/better_player.dart';

class VideoPage extends StatefulWidget {
  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  late BetterPlayerController _betterPlayerController;

  @override
  void initState() {
    super.initState();

    BetterPlayerDataSource dataSource = BetterPlayerDataSource(
      BetterPlayerDataSourceType.network,
      "https://example.com/video/master.m3u8",
      videoFormat: BetterPlayerVideoFormat.hls,
      resolutions: {
        "480p": "https://example.com/video-480p.mp4",
        "720p": "https://example.com/video-720p.mp4",
        "1080p": "https://example.com/video-1080p.mp4",
      },
    );

    _betterPlayerController = BetterPlayerController(
      BetterPlayerConfiguration(
        aspectRatio: 16 / 9,
        autoPlay: true,
        controlsConfiguration: BetterPlayerControlsConfiguration(
          enableQualities: true,
          enablePlaybackSpeed: true,
        ),
      ),
      betterPlayerDataSource: dataSource,
    );
  }

  @override
  void dispose() {
    _betterPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("视频播放")),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: BetterPlayer(controller: _betterPlayerController),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text("推荐视频", style: TextStyle(color: Colors.white, fontSize: 18)),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (_, index) {
                return ListTile(
                  title: Text("推荐视频 ${index + 1}", style: TextStyle(color: Colors.white)),
                  subtitle: Text("播放量: ${(index + 1) * 1000}", style: TextStyle(color: Colors.white70)),
                  tileColor: Colors.grey[900],
                  onTap: () {},
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
