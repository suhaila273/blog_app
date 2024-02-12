import 'dart:convert';

import 'package:http/http.dart' as http;

class PostApiService
{
  Future<dynamic>  addPostApi(String userId,String post) async{
    var client=http.Client();
    var apiUrl=Uri.parse("http://172.16.185.203:3001/api/post/addpost");

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
}