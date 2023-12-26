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
                    context: context,
                    builder: (_) {
                      return Column(
                        children: [
                          Text('Message'),
                          Text('Hello world'),
                        ],
                      );
                    });
              },child: Text('Tap here'),
            ),
            ElevatedButton(
                onPressed: (){
                    showAboutDialog(context: context,);
                    showDialog(context: context, builder: (context) {
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
                }, child: Text("Click Here!"))
          ],
        ),
      ),
    );
  }

}
