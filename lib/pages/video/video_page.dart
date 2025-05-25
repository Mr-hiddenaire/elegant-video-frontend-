import 'package:flutter/material.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';

class VideoPage extends StatefulWidget {
  final String videoUrl;
  const VideoPage({super.key, required this.videoUrl});

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  late VlcPlayerController _vlcController;

  @override
  void initState() {
    super.initState();
    _vlcController = VlcPlayerController.network(
      widget.videoUrl,
      hwAcc: HwAcc.full,
      autoPlay: true,
      options: VlcPlayerOptions(),
    );
  }

  @override
  void dispose() {
    _vlcController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("播放视频")),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: VlcPlayer(
              controller: _vlcController,
              aspectRatio: 16 / 9,
              placeholder: const Center(child: CircularProgressIndicator()),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text("推荐视频",
                style: TextStyle(color: Colors.white, fontSize: 18)),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (_, index) {
                return ListTile(
                  title: Text("推荐视频 \${index + 1}",
                      style: const TextStyle(color: Colors.white)),
                  subtitle: Text("播放量: \${(index + 1) * 1000}",
                      style: const TextStyle(color: Colors.white70)),
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
