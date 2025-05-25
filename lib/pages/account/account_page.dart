import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("用户中心")),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage("https://via.placeholder.com/150"),
            ),
            const SizedBox(height: 16),
            const Text("用户名: 示例用户", style: TextStyle(fontSize: 18)),
            const Text("邮箱: user@example.com", style: TextStyle(fontSize: 16)),
            const SizedBox(height: 24),
            const Text("订阅状态: 已订阅 (2025-12-31 到期)", style: TextStyle(color: Colors.greenAccent)),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {},
              child: const Text("修改密码"),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {},
              child: const Text("管理订阅"),
            ),
            const SizedBox(height: 8),
            OutlinedButton(
              onPressed: () {},
              child: const Text("退出登录", style: TextStyle(color: Colors.redAccent)),
            ),
          ],
        ),
      ),
    );
  }
}
