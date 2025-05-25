import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("注册")),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const TextField(decoration: InputDecoration(labelText: '邮箱')),
            const SizedBox(height: 16),
            const TextField(decoration: InputDecoration(labelText: '用户名')),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(labelText: '密码'),
              obscureText: true,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {},
              child: const Text('注册'),
            ),
          ],
        ),
      ),
    );
  }
}
