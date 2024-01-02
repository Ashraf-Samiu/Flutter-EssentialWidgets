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
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    isDismissible: false,
                    backgroundColor: Colors.yellow,
                    barrierColor: Colors.pink.shade300,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)
                      )
                    ),
                    context: context,
                    builder: (BuildContext context) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Center(
                                child: Text('BottomSheet Message!')
                            ), Text('Hello world'),
                          ],
                        ),
                      );
                    });
              },child: Text('Tap here'),
            ),
            ElevatedButton(onPressed: (){
                showAboutDialog(
                  context: context,
                  applicationName: "Ashraf's Software",
                  applicationVersion: "3.03",
                  applicationIcon: Icon(Icons.account_box),
                  children: [
                    Text("A Practice Application")
                  ]
                );
              }, child: Text("Tap")
            ),
            ElevatedButton(
                onPressed: (){
                    showDialog(
                      barrierDismissible: false,
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Message'),
                            content: Text('Hello, welcome to app'),
                            actions: [
                              ElevatedButton(onPressed: () {},
                                child: Text('cancel'),
                            ),
                          ],
                        );
                      });
                    }, child: Text("Click Here!")
                  )
              ],
          ),
        ),
    );
  }

}
