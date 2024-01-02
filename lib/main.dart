import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeRoute(),
    );
  }
}
///Route
class HomeRoute extends StatelessWidget{
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
            Text("Home Screen"),
            ElevatedButton(
                onPressed: (){
                  /// Route = Screen
                  /// Navigator - 1,2
                  /// Route 1(Current screen) -> Route 2 (Route Settings)
                  /// Step 1- Navigator - push
                  /// Step 2 - Context (current route)
                  /// Step 3 - Convert RouteSettings as Route with MaterialPageRoute
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RouteSettings()
                      )
                  );
                }, child: Text("Go to Settings")
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context)=>OrderScreen())
                  );
                },
                child: Text("Go to OrderScreen")
            )
          ],
        ),
      ),
    );
  }
}
///Route
class RouteSettings extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("settings Screen"),
            ElevatedButton(
                onPressed: (){
                  /// Back to previous screen
                  Navigator.pushAndRemoveUntil(
                      context, MaterialPageRoute(
                      builder: (context)=>HomeRoute()
                  ), (route) => false);
                  ///true define backstack button will remain after going to the desired route
                },
                child: Text("Go to Home Screen")
            ),
          ],
        ),
      ),
    );
  }
}
///Route
class OrderScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Order Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Order Screen"),
            ElevatedButton(
              onPressed: (){
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context)=> RouteSettings()
                    ));
              },
              child: Text("'Go to Settings by replace'"),
            ),
            ElevatedButton(
                onPressed: (){
                  /// Back to previous screen
                  Navigator.pop(context);
                },
                child: Text("Back to Home")
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              child: Text("Go to previous screen"),
            ),
            ElevatedButton(onPressed: (){
              /// Back to previous screen (will skip the previous screen)
              Navigator.pushAndRemoveUntil(
                  context, MaterialPageRoute(
                  builder: (context) => HomeRoute()
              ), (route) => false);
            }, child: Text("Go to Home"))
          ],
        ),
      ),
    );
  }
}