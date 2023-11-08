import 'package:flutter/material.dart';
import 'package:pbl_project/assign.dart';
import 'package:pbl_project/search_page.dart';
import 'package:pbl_project/syuukatu.dart';
import 'bottom_navigation_bar_widget.dart'; // 共通のボトムナビゲーションバーウィジェットをインポート

//変更箇所 aaaaaaaaaaaa

class AddPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('★Add Page★'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // ボタン1がタップされた場合のアクションを実行
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => syuukatuPage()),
                );
              },
              child: Text('就活情報'),
            ),
            SizedBox(height: 20), // ボタン間のスペースを調整
            ElevatedButton(
              onPressed: () {
                // ボタン2がタップされた場合のアクションを実行
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AssignPage()),
                );
              },
              child: Text('講義'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBarWidget(
        currentIndex: 0, // 選択されたボタンのインデックス
        onTap: (index) {
          if (index == 0) {
            // AddButtonの場合
            // ここでAddButtonに関連するアクションを実行
          } else if (index == 1) {
            // HomeButtonが押された場合、アプリの最初の画面に戻る
            Navigator.popUntil(context, (route) => route.isFirst);
          } else if (index == 2) {
            // その他のボタンに関連するアクション
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SearchPage()),
            );
          }
        },
      ),
    );
  }
}
