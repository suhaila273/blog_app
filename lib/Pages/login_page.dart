import 'package:blog_app_frontend/Pages/register_page.dart';
import 'package:blog_app_frontend/Services/user_service.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email="";
  String pass="";

  TextEditingController email1=new TextEditingController();
  TextEditingController pass1=new TextEditingController();

  void SendValue() async{
    print("email :"+email1.text);
    print("password : "+pass1.text);

    final response =await BlogApiService().loginApi(email1.text, pass1.text);
    if(response["status"]=="success"){
      print("successfuly login");
    }
    else if(response["status"]=="invalid email id"){
      print("inavlid email id");
    }
    else
      {
        print("invalid password");
      }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 15,),
            TextField(
              controller: email1,
              decoration: InputDecoration(
                labelText: "Email id",
                hintText: "Enter email id",
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 15,),
            TextField(
              controller: pass1,
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "enter valid password",
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 15,),
            ElevatedButton(onPressed: SendValue,
                child: Text("Login")),
            SizedBox(height: 15,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterPage()));
            },
                child: Text("Register"))
          ],
        ),
      ),
    );
  }
}
