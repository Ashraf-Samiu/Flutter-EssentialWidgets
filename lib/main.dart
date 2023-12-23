import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget{
  mySnackBar(context,message){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }
  ///Json Array
  var myItems= [
    {"img": "https://cdn.hashnode.com/res/hashnode/image/upload/v1679571998369/3d121736-2637-43b7-ac55-d4370e57770d.png","title": "Ashraf"},
    {"img": "https://cdn.hashnode.com/res/hashnode/image/upload/v1679571998369/3d121736-2637-43b7-ac55-d4370e57770d.png","title": "Karim"},
    {"img": "https://cdn.hashnode.com/res/hashnode/image/upload/v1679571998369/3d121736-2637-43b7-ac55-d4370e57770d.png","title": "Rafiq"},
    {"img": "https://cdn.hashnode.com/res/hashnode/image/upload/v1679571998369/3d121736-2637-43b7-ac55-d4370e57770d.png","title": "Shafiq"},
    {"img": "https://cdn.hashnode.com/res/hashnode/image/upload/v1679571998369/3d121736-2637-43b7-ac55-d4370e57770d.png","title": "Sakib"}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: GridView.builder(
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 5,
              childAspectRatio: 1.2
          ),
          itemCount: myItems.length,
          itemBuilder: (context,index){
            return GestureDetector(
              onTap: (){
                mySnackBar(context, myItems[index]["title"]);
              },
              child: Container(
                margin: EdgeInsets.all(6),
                width: double.infinity,
                height: 200,
                child: Image.network(
                  myItems[index]["img"]!,
                  fit: BoxFit.fill,
                ),
              ),
            );
          }),
    );
  }
}