import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController name1=new TextEditingController();
  TextEditingController age1=new TextEditingController();
  TextEditingController mobile1=new TextEditingController();
  TextEditingController address1=new TextEditingController();
  TextEditingController pincode1=new TextEditingController();
  TextEditingController email1=new TextEditingController();
  TextEditingController password1=new TextEditingController();

  void SendValues(){
    print("name :"+name1.text);
    print("age :"+age1.text);
    print("mobile :"+mobile1.text);
    print("address :"+address1.text);
    print("pincode :"+pincode1.text);
    print("email :"+email1.text);
    print("password :"+password1.text);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(height: 10,),
                TextField(
                  controller: name1,
                  decoration: InputDecoration(
                    labelText: "Name",
                    hintText: "enter name",
                    border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: age1,
                  decoration: InputDecoration(
                      labelText: "Age",
                      hintText: "enter age",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: mobile1,
                  decoration: InputDecoration(
                      labelText: "Mobile",
                      hintText: "enter mobile no",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: address1,
                  decoration: InputDecoration(
                      labelText: "Address",
                      hintText: "enter address",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: pincode1,
                  decoration: InputDecoration(
                      labelText: "Pincode",
                      hintText: "enter pincode",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: email1,
                  decoration: InputDecoration(
                      labelText: "Email",
                      hintText: "enter email id",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: password1,
                  decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "enter password",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 15,),
                ElevatedButton(onPressed: SendValues,
                    child: Text("Sign Up")),
                SizedBox(height: 10,),
                ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                },
                    child: Text("go back"))
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}
