import 'package:flutter/material.dart';
import 'package:pbl_project/add_page.dart';
import 'bottom_navigation_bar_widget.dart'; // 共通のボトムナビゲーションバーウィジェットをインポート

class syuukatuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('syuukatu Page'),
      ),
      body: Center(
        child: Text('This is the content of the syuukatu page.'),
      ),
      bottomNavigationBar: BottomNavigationBarWidget(
        currentIndex: 2, // 選択されたボタンのインデックス
        onTap: (index) {
          if (index == 0) {
            // AddButtonの場合
            // ここでAddButtonに関連するアクションを実行
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddPage()),
            );
          } else if (index == 1) {
            // HomeButtonが押された場合、アプリの最初の画面に戻る
            Navigator.popUntil(context, (route) => route.isFirst);
          } else if (index == 2) {
            // その他のボタンに関連するアクション
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => syuukatuPage()));
          }
          ;
        },
      ),
    );
  }
}
