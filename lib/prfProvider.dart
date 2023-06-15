import 'package:final_flutter_project/controller/api_controller.dart';
import 'package:flutter/material.dart';

import 'controller/works.dart';

class GetProvider extends ChangeNotifier{

  List<Works> list = [];

  getData() async{
    list = await ApiController().getAllWorks();
    notifyListeners();
  }
}