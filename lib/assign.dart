import 'package:flutter/material.dart';
import 'package:pbl_project/add_page.dart';
import 'bottom_navigation_bar_widget.dart';
import 'assign_page_dropdown_button_subject.dart';
import 'assign_page_dropdown_button_info.dart';
import 'post_page.dart'; // PostPage のインポート

class AssignPage extends StatefulWidget {
  @override
  _AssignPageState createState() => _AssignPageState();
}

class _AssignPageState extends State<AssignPage> {
  int _selectedSubject = -1;
  int _selectedInfo = -1;

  @override
  Widget build(BuildContext context) {
    bool isNextButtonEnabled = _selectedSubject != -1 && _selectedInfo != -1;

    return Scaffold(
      appBar: AppBar(
        title: Text('Assign Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AssignPageDropdownButtonSubject(
              currentIndex: _selectedSubject,
              onTap: (index) {
                setState(() {
                  _selectedSubject = index;
                });
              },
            ),
            SizedBox(height: 16.0), // Add some space between the dropdowns
            AssignPageDropdownButtonInfo(
              currentIndex: _selectedInfo,
              onTap: (index) {
                setState(() {
                  _selectedInfo = index;
                });
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBarWidget(
        currentIndex: 0,
        onTap: (index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddPage()),
            );
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
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 16.0, right: 16.0),
        child: FloatingActionButton(
          onPressed: isNextButtonEnabled
              ? () {
                  // Next ボタンが押されたときの処理
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PostPage(), // PostPage に遷移
                    ),
                  );
                }
              : null, // ボタンが無効の場合は null を設定
          child: Icon(Icons.arrow_forward),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
