import 'package:flutter/material.dart';

class AssignPageDropdownButtonSubject extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;

  AssignPageDropdownButtonSubject(
      {required this.currentIndex, required this.onTap});

  @override
  _AssignPageDropdownButtonSubject createState() =>
      _AssignPageDropdownButtonSubject();
}

class _AssignPageDropdownButtonSubject
    extends State<AssignPageDropdownButtonSubject> {
  int? _selectedValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<int>(
      value: _selectedValue ?? widget.currentIndex,
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
          value: 0,
          child: Row(
            children: [
              SizedBox(width: 8.0),
              Text('Add'),
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
