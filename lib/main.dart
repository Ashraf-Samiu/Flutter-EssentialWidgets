import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget{
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
            Text(
              "Home",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w800
              ),
            ),
            ElevatedButton(
                onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=>SettingsScreen()
                    )
                  );
                }, child: Text("Go to the settings screen")),
            ElevatedButton(
                onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=>OrderScreen()
                    )
                  );
                }, child: Text("Go to order screen")),
            ElevatedButton(
                onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=>ProductListScreen()
                    )
                  );
              }, child: Text("Go to product Screen"))
          ],
        ),
      ),
    );
  }
}
class SettingsScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Settings",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w800
              ),
            ),
            ElevatedButton(
                onPressed: (){
                Navigator.pushAndRemoveUntil(
                    context, MaterialPageRoute(
                    builder: (context)=> HomeScreen()
                ), (route) => false);
              },child: Text("Go to home")),
          ],
        ),
      ),
    );
  }
}
class OrderScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Orders"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Orders",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w800
              ),
            ),
            TextButton(
                onPressed: (){
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(
                      builder: (context)=>SettingsScreen()
                  )
                );
              },child: Text("Go to settings")),
            TextButton(
                onPressed: (){
                  Navigator.pop(context);
            }, child: Text("Back to Home")),
          ],
        ),
      ),
    );
  }
}
class ProductListScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product List"),
      ),
      body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context,index){
            return ListTile(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context){
                      return ProductDetailsScreen(
                          productName: index.toString(),
                          price: 1245);
                      //short form of return is =>
                    })).then((value){
                      print(value);
                    });
                  },
              title: Text(index.toString()),
              subtitle: Text("product details $index"),
            );
          }),
    );
  }
}
class ProductDetailsScreen extends StatelessWidget{
  final String productName;
  final double? price;
  const ProductDetailsScreen({super.key,
    required this.productName,
    this.price });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Details"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              productName,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700
              ),
            ),
            ElevatedButton(
                onPressed: (){
                Navigator.pop
                  (context,"productList No-$productName");
              },child: Text("Back")
            )
          ],
        ),
      ),
    );
  }
}
