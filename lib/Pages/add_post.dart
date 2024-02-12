import 'package:blog_app_frontend/Services/post_service.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AddPost extends StatefulWidget {
  const AddPost({super.key});

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  TextEditingController post=new TextEditingController();

  void SendValuesToApi() async{
    SharedPreferences prefer=await SharedPreferences.getInstance();
    String userId=prefer.getString("userId")?? "";
    print("post is :"+post.text);

    final response= await PostApiService().addPostApi(userId, post.text);
    print(response);
    if(response["status"]=="success"){
      print("post successfuly added");
    }
    else
      {
        print("Error");
      }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ADD POST PAGE"),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(height: 20,),
              TextField(
                controller: post,
                decoration: InputDecoration(
                  labelText: "Add Post",
                  hintText: "enter your post",
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 15,),
              ElevatedButton(onPressed: SendValuesToApi,
                  child: Text("ADD")),
              SizedBox(height: 15,),
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text("go back"))
            ],
          ),
        ),
      ),
    );
  }
}
