import 'package:flutter/cupertino.dart';

import 'package:http/http.dart' as http;
import 'package:provider_test/service_class.dart';
import 'package:provider_test/signup_model.dart';

class DataClass extends ChangeNotifier {
 // int _x = 0;
  int x =0;
 // int get x => _x;
  bool loading = false;
  bool isBack = false;
  void incrementX() {
    x++;
   // _x++;
  notifyListeners();
  }

  void decrementX() {
    x--;
    //_x--;
    notifyListeners();
  }

  Future<void> postData(SignUpBody body) async {
    loading = true;
    notifyListeners();
    http.Response response = (await register(body))!;
    if (response.statusCode == 200) {
      isBack = true;
    }
    loading = false;
    notifyListeners();
  }
}
