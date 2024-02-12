import 'package:blog_app_frontend/Model/post_model.dart';
import 'package:blog_app_frontend/Model/viewpost_model.dart';
import 'package:blog_app_frontend/Services/post_service.dart';
import 'package:flutter/material.dart';

class ViewPost extends StatefulWidget {
  const ViewPost({super.key});

  @override
  State<ViewPost> createState() => _ViewPostState();
}

class _ViewPostState extends State<ViewPost> {
  Future<List<Viewpost>> ? data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data=PostApiService().getPost();
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("view all post"),
        ),
        body: FutureBuilder(
            future: data,
            builder: (context,snapshot){
              if(snapshot.hasData && snapshot.data!.isNotEmpty)
              {
                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context,index){
                      return Card(
                        child: Column(
                          children: [
                            ListTile(
                              title: Text(snapshot.data![index].userId.name),
                              subtitle: Text(snapshot.data![index].userId.address+ "\n"
                                  + snapshot.data![index].userId.mobile+
                                  "\n"+snapshot.data![index].postedDate.toIso8601String()
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text(snapshot.data![index].post,style: TextStyle(fontSize: 20),),
                            //Image.network(snapshot.data![index].post),
                            SizedBox(height: 10,),
                          ],
                        ),
                      );
                    });
              }
              else
              {
                return CircularProgressIndicator();
              }
            }),

      ),
    );
  }
}
