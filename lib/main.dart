import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    ///MaterialPackage components are usable in CupertinoApp
    ///CupertinoApp is totally IOS system-based Design..
    return CupertinoApp(
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        ///In Ios There is no such things as appBar..the things that exist is NavigationBar
        navigationBar: CupertinoNavigationBar(
          middle: Text("Home"),
          backgroundColor: Colors.grey,
          leading: Icon(CupertinoIcons.home, size: 18),
          trailing: Icon(CupertinoIcons.ant_circle),
        ),
        child: Column(
          children: [
            CupertinoButton(child: Text("Tap Here"), onPressed: (){}),
            CupertinoButton.filled(child: Text("Click Here"), onPressed: (){}),
            ElevatedButton(onPressed: (){}, child: Text("Click")),
            CupertinoTabBar(items: [
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.home)),
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.settings)),
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.person))
            ]),
            CupertinoTextField(),
          ],
        ),
     );
  }
}
