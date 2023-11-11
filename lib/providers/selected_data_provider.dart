import 'package:flutter/material.dart';
import 'package:pbl_project/models/selected_data_model.dart';

class SelectedDataProvider with ChangeNotifier {
  SelectedDataModel _selectedData = SelectedDataModel();

  int get selectedSubject => _selectedData.selectedSubject;
  int get selectedInfo => _selectedData.selectedInfo;

  set selectedSubject(int value) {
    _selectedData.selectedSubject = value;
    notifyListeners();
  }

  set selectedInfo(int value) {
    _selectedData.selectedInfo = value;
    notifyListeners();
  }
}
