import 'package:flutter/material.dart';
import 'package:providr_prac/models/data_model.dart';

class MyAppProvider extends ChangeNotifier {
  List<DataModel> data = [
    DataModel(
      name: 'Mostafa Hashem',
      email: 'mostafahashem@gmail.com',
      id: '32434356',
      phoneNumber: '01354856',
    ),
    DataModel(
      name: 'Amr',
      email: 'amr@gmail.com',
      id: '32434356',
      phoneNumber: '01354856',
    ),
    DataModel(
      name: 'Mohamed ',
      email: 'mohamed@gmail.com',
      id: '32434356',
      phoneNumber: '01354856',
    ),
    DataModel(
      name: 'Amir',
      email: 'amir@gmail.com',
      id: '32434356',
      phoneNumber: '01354856',
    ),
  ];

  void addData(DataModel dataModel) {
    data.add(dataModel);
    notifyListeners();
  }

  void removeData(DataModel dataModel) {
    data.remove(dataModel);
    notifyListeners();
  }
}
