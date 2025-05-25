import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("首页")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                context.go('/login');
              },
              child: const Text("前往登录"),
            ),
            ElevatedButton(
              onPressed: () {
                context.go('/register');
              },
              child: const Text("前往登录"),
            ),
            ElevatedButton(
              onPressed: () {
                final videoUrl = Uri.encodeComponent("https://bitdash-a.akamaihd.net/content/sintel/hls/playlist.m3u8");
                context.go('/video?url=$videoUrl');
              },
              child: const Text("播放视频"),
            ),
          ],
        ),
      ),
    );
  }
}
