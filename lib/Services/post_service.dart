import 'dart:convert';

import 'package:blog_app_frontend/Model/post_model.dart';
import 'package:blog_app_frontend/Model/viewpost_model.dart';
import 'package:http/http.dart' as http;

class PostApiService
{
  Future<dynamic>  addPostApi(String userId,String post) async{
    var client=http.Client();
    var apiUrl=Uri.parse("http://192.168.0.104:3001/api/post/addpost");

    var response=await client.post(apiUrl,
    headers: <String,String>{
      "Content-Type" :"application/json; charset=UTF-8"
    },
      body: jsonEncode({
        "userId": userId,
        "post": post
      })
    );
    if(response.statusCode==200){
      return json.decode(response.body);
    }
    else
      {
        throw Exception("failed to post");
      }
  }

  Future<List<Viewpost>> getPost() async{
    var client =http.Client();
    var apiUrl=Uri.parse("http://192.168.0.104:3001/api/post/viewall");

    var response=await client.get(apiUrl);
    if(response.statusCode==200){
      return viewpostFromJson(response.body);
    }
    else
      {
        return [];
      }
  }
}