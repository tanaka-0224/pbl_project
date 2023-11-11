import 'package:flutter/material.dart';
import 'package:pbl_project/assign.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post Page'),
      ),
      body: Center(child: Text('ポストページ')),
    );
  }
}
