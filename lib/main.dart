import 'package:flutter/material.dart';

///BottomTabNavigation
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application Title",
      home: HomeActivity(),
    );
  }
}
class HomeActivity extends StatelessWidget{

  mySnackBar(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Application"),
      ),
      bottomNavigationBar: BottomNavigationBar(
          elevation: 5,
          backgroundColor: Colors.grey,
          currentIndex: 1,
          // selectedItemColor: Colors.lightGreen,
          // unselectedItemColor: Colors.purpleAccent,
          showSelectedLabels: true,///if we use false value the texts under the icon will disappear
          showUnselectedLabels: true,///same as showSelectedLabel...selected refers to currentIndex
          selectedFontSize: 15,
          unselectedFontSize: 15,
          ///we can take highest 3 bottomNavBar..
          ///if we wanna use 4/5 the bottomNav will be disappeared..
          ///but if we BottomNavigationType.fixed..more than 3 bottomTabNav will work without any issues..
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: TextStyle(
            fontSize: 18,///will increase the space for label texts
            color: Colors.purple,
            fontWeight: FontWeight.bold
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 18,///will do the same as selectedLabel..
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
          fixedColor: Colors.red,///it will work for the currentIndex..
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile"),
            BottomNavigationBarItem(
                icon: Icon(Icons.email),
                label: "Contact"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                label: "Profile"),
          ],
        onTap: (int index){
          if(index==0){
            mySnackBar("This is Home", context);
          }else if(index==1){
            mySnackBar("this is profile", context);
          }else if(index==2){
            mySnackBar("This is contract", context);
          }else if(index==3){
            mySnackBar("This is Profile", context);
          }
        },
      ),
    );
  }

}