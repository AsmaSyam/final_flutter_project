import 'dart:convert';
import 'dart:io';

import 'package:final_flutter_project/controller/api_response.dart';
import 'package:final_flutter_project/controller/user.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

import 'api_settings.dart';

class ApiController{

  Future<ApiResponse> login({email , password}) async {
    Uri uri = Uri.parse(ApiSettings.login_uri);
    var map = {
      "email" : email ,
      "password" : password
    };

    http.Response response = await http.post(uri ,
        body: map ,
        headers: {HttpHeaders.contentTypeHeader: 'application/json'});

    if(response.statusCode == 200){
      var jsonResponse  = jsonDecode(response.body);
      ApiResponse rresponse = ApiResponse.fromJson(jsonResponse);
      if(response.statusCode == 200){
        if(rresponse.data != null){
          GetStorage().write("token", rresponse.data!.token);
          GetStorage().write("email", rresponse.data!.email);
          GetStorage().write("name", rresponse.data!.name);
        }
      }
      return rresponse;
    }
    return ApiResponse(success: false , message: "Some thing is wrong");
  }

  Future<ApiResponse> register({required User user1}) async {
    Uri uri = Uri.parse(ApiSettings.register_uri);

    http.Response response = await http.post(uri ,
        body: user1.toJsonRegister() ,
        headers: {HttpHeaders.contentTypeHeader: 'application/json'});

    if(response.statusCode == 200){
      var jsonResponse  = jsonDecode(response.body);
      ApiResponse rresponse = ApiResponse.fromJson(jsonResponse);
      return rresponse;
    }
    return ApiResponse(success: false , message: "Some thing is wrong");

  }

}