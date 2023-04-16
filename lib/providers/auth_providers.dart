import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:future_provider/models/user_model.dart';
import 'package:http/http.dart' as http;
import 'dart:developer' as devlog;

class AuthProvider with ChangeNotifier {
  Future<UserModel?> register(
    String name,
    String email,
    String password,
  ) async {
    try {
      var body = <String, dynamic>{
        'name': name,
        'email': email,
        'password': password,
      };

      var response = await http.post(
        Uri.parse('http://10.210.127.82:8000/api/register'),
        body: body,
      );
      
      print(response.statusCode);
      print(response.body);

      if (response.statusCode == 200) {
        return UserModel.fromJson(
          jsonDecode(response.body),
        );
      }
    } catch (e) {
      print(e);
    }
  }

  


    // try {
    //   devlog.log("BILLY PERTAMA", name: "HEY");

    //   var body = <String, dynamic>{
    //     'email': email,
    //     'password': password,
    //   };

    //   var response = await http.post(
    //     Uri.parse('http://10.210.127.82:8000/api/login'),
    //     body: body,
    //   );

    //   devlog.log("BILLY");
      
    //   print(response);
    //   print(response.statusCode);
    //   print(response.body);

    //   devlog.log(response.statusCode.toString(), name: "HEY");
    //   if (response.statusCode == 200) {
    //     return UserModel.fromJson(
    //       jsonDecode(response.body),
    //     );
    //   } 

    // } catch (e) {
    //   devlog.log("BILLY ERROR");

    //   print(e);
    // }

    Future<UserModel?> login(
    String email,
    String password,
  ) async {

    final response = await http.post(Uri.parse('http://10.210.127.82:8000/api/login'));
     if (response.statusCode == 200) {
        return UserModel.fromJson(jsonDecode(response.body));
     }else{
      devlog.log('eror belly');
     }
  }
}
