import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("首页")),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          ElevatedButton(
            onPressed: () {
              final url = Uri.encodeComponent("https://www.w3schools.com/html/mov_bbb.mp4");
              context.go("/video?url=$url");
            },
            child: const Text("播放视频"),
          ),
          ElevatedButton(onPressed: () => context.go('/login'), child: const Text("登录")),
          ElevatedButton(onPressed: () => context.go('/register'), child: const Text("注册")),
          ElevatedButton(onPressed: () => context.go('/account'), child: const Text("用户中心")),
          ElevatedButton(onPressed: () => context.go('/subscribe'), child: const Text("订阅管理")),
        ],
      ),
    );
  }
}
