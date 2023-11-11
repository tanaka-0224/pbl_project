import 'package:flutter/material.dart';

class AssignPageDropdownButtonInfo extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;

  AssignPageDropdownButtonInfo(
      {required this.currentIndex, required this.onTap});

  @override
  _AssignPageDropdownButtonInfo createState() =>
      _AssignPageDropdownButtonInfo();
}

class _AssignPageDropdownButtonInfo
    extends State<AssignPageDropdownButtonInfo> {
  int? _selectedValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<int>(
      value: _selectedValue ?? -1,
      onChanged: (int? newValue) {
        setState(() {
          _selectedValue = newValue;
        });

        // 選択された値を親ウィジェットに通知
        if (newValue != null) {
          widget.onTap(newValue);
        }
      },
      items: <DropdownMenuItem<int>>[
        DropdownMenuItem<int>(
          value: -1,
          child: Row(
            children: [
              SizedBox(width: 8.0),
              Text('ーーー'),
            ],
          ),
        ),
        DropdownMenuItem<int>(
          value: 0,
          child: Row(
            children: [
              SizedBox(width: 8.0),
              Text('電気'),
            ],
          ),
        ),
        DropdownMenuItem<int>(
          value: 1,
          child: Row(
            children: [
              SizedBox(width: 8.0),
              Text('Home'),
            ],
          ),
        ),
        DropdownMenuItem<int>(
          value: 2,
          child: Row(
            children: [
              SizedBox(width: 8.0),
              Text('Search'),
            ],
          ),
        ),
      ],
    );
  }
}
