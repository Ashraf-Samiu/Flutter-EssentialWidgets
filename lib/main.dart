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
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Essential Widgets"),
      ),
      body: Scrollbar(
        thickness: 10,
        radius: Radius.circular(10),
        child: ListView(
          children: [
            ListTile(
              title: Text("UserEmail"),
              subtitle: Text("Gmail.com"),
              leading: Icon(Icons.email),
              trailing: Icon(Icons.add_card),
              onTap: (){
                mySnackBar(context, "Item-1");
              },
              onLongPress: (){
                mySnackBar(context, "ITem-1");
              },
            ),
            Divider(
              height: 20,
              thickness: 2,
              color: Colors.green,
              indent: 15,
              endIndent: 15,
            ),
            ListTile(
              title: Text("UserName"),
              subtitle: Text("First Name & Last Name"),
              leading: Icon(Icons.account_circle),
              trailing: Icon(Icons.access_time),
              onTap: (){
                mySnackBar(context, "Item-2");
              },
              onLongPress: (){
                mySnackBar(context, "ITem-2");
              },
            ),
            Divider(
              height: 20,
              thickness: 2,
              color: Colors.green,
              indent: 15,
              endIndent: 15,
            ),
            ListTile(
              title: Text("User Password"),
              subtitle: Text("Password with obscure"),
              leading: Icon(Icons.password),
              trailing: Icon(Icons.accessibility),
              onTap: (){
                mySnackBar(context, "Item-3");
              },
              onLongPress: (){
                mySnackBar(context, "ITem-3");
              },
            ),
            Divider(
              height: 20,
              thickness: 2,
              color: Colors.green,
              indent: 15,
              endIndent: 15,
            ),
            ListTile(
              title: Text("User Address"),
              subtitle: Text("Address"),
              leading: Icon(Icons.add),
              trailing: Icon(Icons.ac_unit_sharp),
              onTap: (){
                mySnackBar(context, "Item-4");
              },
              onLongPress: (){
                mySnackBar(context, "ITem-4");
              },
            ),
            Divider(
              height: 20,
              thickness: 2,
              color: Colors.green,
              indent: 15,
              endIndent: 15,
            ),
            ListTile(
              title: Text("Study Qualification"),
              subtitle: Text("Degree"),
              leading: Icon(Icons.star),
              trailing: Icon(Icons.access_time),
              onTap: (){
                mySnackBar(context, "Item-5");
              },
              onLongPress: (){
                mySnackBar(context, "ITem-5");
              },
            ),
            Divider(
              height: 20,
              thickness: 2,
              color: Colors.green,
              indent: 15,
              endIndent: 15,
            ),
            ListTile(
              title: Text("UserAge"),
              subtitle: Text("Age"),
              leading: Icon(Icons.access_alarms),
              trailing: Icon(Icons.account_box_sharp),
              onTap: (){
                mySnackBar(context, "Item-6");
              },
              onLongPress: (){
                mySnackBar(context, "ITem-6");
              },
            ),
            Divider(
              height: 20,
              thickness: 2,
              color: Colors.green,
              indent: 15,
              endIndent: 15,
            ),
            ListTile(
              title: Text("BirthYear"),
              subtitle: Text("Year"),
              leading: Icon(Icons.date_range),
              trailing: Icon(Icons.time_to_leave),
              onTap: (){
                mySnackBar(context, "Item-7");
              },
              onLongPress: (){
                mySnackBar(context, "ITem-7");
              },
            ),
            Divider(
              height: 20,
              thickness: 2,
              color: Colors.green,
              indent: 15,
              endIndent: 15,
            ),
            ListTile(
              title: Text("accountBalance"),
              subtitle: Text("balance"),
              leading: Icon(Icons.balance),
              trailing: Icon(Icons.ac_unit_rounded),
              onTap: (){
                mySnackBar(context, "Item-8");
              },
              onLongPress: (){
                mySnackBar(context, "ITem-8");
              },
            ),
            Divider(
              height: 20,
              thickness: 2,
              color: Colors.green,
              indent: 15,
              endIndent: 15,
            ),
          ],
        ),
      ),
    );
  }
}
