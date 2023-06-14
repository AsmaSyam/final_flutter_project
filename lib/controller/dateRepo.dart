

import 'api_controller.dart';
import 'works.dart';

class DataRepo{

  ApiController _apiController = ApiController();

  getAllWorks() async {
    return await _apiController.getAllWorks().then((value){
      List<Works> p = [];
      if(value["success"]){
        value["data"].forEach((e){
          p.add(Works.fromJson(e));
        });
      }
      return p ;
    });
  }

}