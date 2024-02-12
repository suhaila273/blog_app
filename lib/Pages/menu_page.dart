import 'package:blog_app_frontend/Pages/add_post.dart';
import 'package:blog_app_frontend/Pages/view_post.dart';
import 'package:flutter/material.dart';

class MenuPostPage extends StatelessWidget {
  const MenuPostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AddPost()));
              }, child: Text("ADD POST")),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewPost()));

              }, child: Text("VIEW ALL POST"))
            ],
          ),
        ),
      ),
    );
  }
}
