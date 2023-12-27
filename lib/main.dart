import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context)=>HomeActivity(),
        '/Login': (context)=>LoginActivity(),
        '/Profile': (context)=>ProfileActiviy()
      },
    );
  }
}
class HomeActivity extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, "/Login");
                },
                child: Text("Go to Login")
            ),
            ElevatedButton(onPressed: (){
                Navigator.pushReplacementNamed(context, "/Login");
              },
                child: Text("go to login")
            )
          ],
        ),
      ),
    );
  }
}
class LoginActivity extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: (){
                Navigator.pushReplacementNamed(context, "/Profile");
            },
            child: Text("Go to Profile")
        ),
      ),
    );
  }
}
class ProfileActiviy extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Profile Activity")
          ],
        ),
      ),
    );
  }
  
}
