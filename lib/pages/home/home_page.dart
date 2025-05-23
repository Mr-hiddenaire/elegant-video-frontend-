import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('视频首页'),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(16),
        itemCount: 8,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: MediaQuery.of(context).size.width > 600 ? 4 : 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 16 / 9,
        ),
        itemBuilder: (context, index) {
          return Container(
            color: Colors.grey[800],
            child: Center(child: Text('视频 ${index + 1}', style: TextStyle(color: Colors.white))),
          );
        },
      ),
    );
  }
}
