import 'package:flutter/material.dart';
import 'package:pbl_project/add_page.dart';
import 'bottom_navigation_bar_widget.dart';
import 'assign_page_dropdown_button_subject.dart';
import 'assign_page_dropdown_button_info.dart';

class AssignPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
<<<<<<< HEAD
        title: Text('Assign Page'),
=======
        title: Text('kougi Page'),
>>>>>>> 3c6155a894ebcacf4633b2b87969193a8ebcc307
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AssignPageDropdownButtonSubject(
              currentIndex: 0,
              onTap: (index) {
                // Handle the selection of the subject dropdown menu
                // You can add your logic here based on the selected index
              },
            ),
            SizedBox(height: 16.0), // Add some space between the dropdowns
            AssignPageDropdownButtonInfo(
              currentIndex: 0,
              onTap: (index) {
                // Handle the selection of the info dropdown menu
                // You can add your logic here based on the selected index
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
    );
  }
}
