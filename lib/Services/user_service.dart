import 'dart:convert';

import 'package:http/http.dart' as http;

class BlogApiService
{
  Future<dynamic>loginApi(String email,String password) async{
    var client=http.Client();
    var apiUrl=Uri.parse("http://172.16.185.203:3001/api/signup/login");

    var response =await client.post(apiUrl,
    headers: <String,String>{
      "Content-Type" : "application/json ; charset=UTF-8"
    },
      body: jsonEncode({
        "email": email,
        "password": password
      })
    );
    if(response.statusCode==200){
      return json.decode(response.body);
    }
    else{
      throw Exception("failed to send");
    }
  }

  Future<dynamic> sendData(
      String name,
      String age,
      String mobile,
      String address,
      String pincode,
      String email,
      String password
      ) async{
    var client=http.Client();
    var apiUrl=Uri.parse("http://172.16.185.203:3001/api/signup/add");

    var response = await client.post(apiUrl,
    headers: <String,String>{
      "Content-Type" :"application/json; charset=UTF-8"
    },
      body: jsonEncode({
        "name": name,
        "age": age,
        "mobile": mobile,
        "address": address,
        "pincode": pincode,
        "email": email,
        "password": password,
      })
    );
    if(response.statusCode==200){
      return json.decode(response.body);
    }
    else{
      throw Exception("failed to add");
    }
  }
}