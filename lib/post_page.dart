import 'package:flutter/material.dart';
import 'package:pbl_project/assign.dart';
import 'bottom_navigation_bar_widget.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post Page'),
      ),
      body: Center(child: Text('ポストページ')),
      bottomNavigationBar: BottomNavigationBarWidget(
        currentIndex: 0,
        onTap: (index) {
          if (index == 0) {
          } else if (index == 1) {
            Navigator.popUntil(context, (route) => route.isFirst);
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AssignPage()),
            );
          }
        },
      ),
    );
  }
}
