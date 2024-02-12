import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 15,),
            TextField(
              decoration: InputDecoration(
                labelText: "Email id",
                hintText: "Enter email id",
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 15,),
            TextField(
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "enter valid password",
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 15,),
            ElevatedButton(onPressed: (){},
                child: Text("Login")),
            SizedBox(height: 15,),
            ElevatedButton(onPressed: (){},
                child: Text("Register"))
          ],
        ),
      ),
    );
  }
}
