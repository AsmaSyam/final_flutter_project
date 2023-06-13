import 'dart:convert';
import 'dart:io';

import 'package:final_flutter_project/controller/api_response.dart';
import 'package:http/http.dart' as http;

import 'api_settings.dart';

class ApiController{

  login({email , password}) async {
    Uri uri = Uri.parse(ApiSettings.login_uri);
    var map = {
      "email" : email ,
      "password" : password
    };

    http.Response response = await http.post(uri ,
        body: map ,
        headers: {HttpHeaders.contentTypeHeader: 'application/json'});

    if(response.statusCode == 200 || response.statusCode == 400){
      var jsonResponse  = jsonDecode(response.body);
      ApiResponse rresponse = ApiResponse.fromJson(jsonResponse);
      if(response.statusCode == 200){

      }
      return rresponse;
    }
  }
}