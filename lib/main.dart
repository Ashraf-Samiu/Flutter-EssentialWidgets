import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.redAccent,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.greenAccent,
            foregroundColor: Colors.yellow,
            padding: EdgeInsets.symmetric(
              horizontal: 16,vertical: 16
            ),
            elevation: 10,
            textStyle: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.8,
              wordSpacing: 0.6
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0)
            ),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500
            )
          )
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.purple,
          elevation: 5,
          shadowColor: Colors.blueAccent,
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.yellow
          )
        ),
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            fontSize: 18, ///by default value 14...
          ),
          bodyLarge: TextStyle(
            fontSize: 22
          ),
          bodySmall: TextStyle(
            fontSize: 10
          ),
          ///we can take both body small and large by calling the themeData
        )
      ),
      ///we can use only one if we use light the theme property will work
      ///but if we use dark the darkTheme property will work
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.purpleAccent,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.purpleAccent,
            backgroundColor: Colors.greenAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
              side: BorderSide(
                width: 2,
                color: Colors.red
              ),
            ),
          )
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.brown,
          elevation: 10,
          shadowColor: Color(0xFF800000)
        )
      ),
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Home",),
      ),
      body: Center(
        child: Column(
          children: [
            Text("This World is very Beautiful"),
            Text("Hello World!",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text("Hello World!",
              style: Theme.of(context).textTheme.bodySmall,
            ),
            Text("Hello World!",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text("Hello World!",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Text("Hello World!",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text("Hello World!",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purpleAccent,
                  foregroundColor: Colors.greenAccent
                ), child: Text("data")),
            ElevatedButton(onPressed: (){}, child: Text("Information")),
            ElevatedButton(onPressed: (){}, child: Text("Documentation")),
            TextButton(onPressed: (){},
                style: TextButton.styleFrom(
                  foregroundColor: Colors.indigo
                ), child: Text("Dart")),
            TextButton(onPressed: (){}, child: Text("Flutter")),
          ],
        ),
      ),
    );
  }
}
