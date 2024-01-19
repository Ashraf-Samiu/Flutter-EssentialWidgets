import 'package:flutter/material.dart';
import 'package:flutter_widgets/Fragment_Screen/ac_unit.dart';
import 'package:flutter_widgets/Fragment_Screen/balance.dart';
import 'package:flutter_widgets/Fragment_Screen/bussiness.dart';
import 'package:flutter_widgets/Fragment_Screen/email.dart';
import 'package:flutter_widgets/Fragment_Screen/home.dart';
import 'package:flutter_widgets/Fragment_Screen/profile.dart';
import 'package:flutter_widgets/Fragment_Screen/search.dart';
import 'package:flutter_widgets/Fragment_Screen/settings.dart';

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
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 8,
          animationDuration: Duration(microseconds: 300),
          child: Scaffold(
            appBar: AppBar(
              title: Text("Home"),
              bottom: TabBar(
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(
                    width: 6,
                    color: Colors.white54
                  ),
                  borderRadius: BorderRadius.circular(5),
                  insets: EdgeInsets.symmetric(horizontal: 80)
                ),
                unselectedLabelColor: Colors.grey,
                labelColor: Colors.redAccent,
                indicatorWeight: 5,
                isScrollable: true,
                  tabs: [
                    Tab(
                      icon: Icon(Icons.home),
                      text: "Home",
                    ),
                    Tab(
                      icon: Icon(Icons.account_circle),
                      text: "Profile",
                    ),
                    Tab(
                      icon: Icon(Icons.settings),
                      text: "Settings",
                    ),
                    Tab(
                      icon: Icon(Icons.add_business),
                      text: "Bussiness",
                    ),
                    Tab(
                      icon: Icon(Icons.search),
                      text: "Search",
                    ),
                    Tab(
                      icon: Icon(Icons.email),
                      text: "Email",
                    ),
                    Tab(
                      icon: Icon(Icons.ac_unit),
                      text: "Ac-Unit",
                    ),
                    Tab(
                      icon: Icon(Icons.balance),
                      text: "balance",
                    )
                  ]
              ),
            ),
            body: TabBarView(children: [
              Home(),
              Profile(),
              Settings(),
              Bussiness(),
              Search(),
              Email(),
              Ac_unit(),
              Balance()
            ]),
          ));
      }
}