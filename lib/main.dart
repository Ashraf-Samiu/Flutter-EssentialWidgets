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
  TextEditingController searchTextFieldController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                ///to take multiple input we have to use maxLines by default it's value-1
                onTap: (){
                  print("Password Tapped");
                },
                onChanged: (String input){
                  print(input);
                },
                onSubmitted: (String value){
                  print(searchTextFieldController.text);
                  searchTextFieldController.clear();
                },
                controller: TextEditingController(),
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.search,
                maxLines: 3,
                style: TextStyle(
                  color: Colors.grey
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.black,
                  hintText: "Enter your Name",
                  hintStyle: TextStyle(
                      color: Colors.red
                  ),
                  label: Text("Enter your Name please!"),
                  labelStyle: TextStyle(
                    color: Colors.purple
                  ),
                  prefixIcon: Icon(
                    Icons.account_circle,
                    color: Colors.red
                  ),
                  prefix: Text(
                    "HI ",
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                  suffixIcon: Icon(
                    Icons.home,
                    color: Colors.green,
                  ),
                  suffix: Text(
                    "Hlw",
                    style: TextStyle(
                      color: Colors.blue
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue
                    )
                  )
                ),
              ),
            ),
            SizedBox(
              width: 10,
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: searchTextFieldController,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                obscureText: true,
                style: TextStyle(
                  color: Colors.white
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.blue,
                  hintText: "Enter your password",
                  hintStyle: TextStyle(
                    color: Colors.red
                  ),
                  label: Text("Enter your password please!"),
                  labelStyle: TextStyle(
                    color: Colors.purple
                  ),
                  prefixIcon: Icon(
                    Icons.dangerous,
                    color: Colors.greenAccent,
                  ),
                  suffixIcon: Icon(
                    Icons.camera,
                    color: Colors.brown,
                  ),
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.purple,
                      width: 5
                    ),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.deepOrange,
                      width: 5
                    )
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 5
                    )
                  )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
