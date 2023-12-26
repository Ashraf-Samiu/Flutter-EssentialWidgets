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
  mySnackBar(context,message){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }
  var products = [
    {'title': 'Product 1', 'price': "\$19.99", 'image': 'https://cdn.pixabay.com/photo/2016/06/28/05/10/laptop-1483974_1280.jpg'},
    {'title': 'Product 2', 'price': "\$29.99", 'image': 'https://cdn.pixabay.com/photo/2016/11/22/23/40/hands-1851218_1280.jpg'},
    {'title': 'Product 3', 'price': "\$39.99", 'image': 'https://cdn.pixabay.com/photo/2016/10/10/14/17/refrigerator-1728501_1280.jpg'},
    {'title': 'Product 4', 'price': "\$49.99", 'image': 'https://cdn.pixabay.com/photo/2019/06/30/18/19/tv-4308537_1280.jpg'},
    {'title': 'Product 5', 'price': "\$59.99", 'image': 'https://cdn.pixabay.com/photo/2017/04/04/17/22/netgear-2202273_1280.jpg'},
    {'title': 'Product 6', 'price': "\$69.99", 'image': 'https://cdn.pixabay.com/photo/2017/03/19/01/43/living-room-2155376_1280.jpg'},
    {'title': 'Product 7', 'price': "\$79.99", 'image': 'https://cdn.pixabay.com/photo/2017/08/02/01/01/living-room-2569325_1280.jpg'},
    {'title': 'Product 8', 'price': "\$89.99", 'image': 'https://cdn.pixabay.com/photo/2015/01/19/13/51/car-604019_1280.jpg'},
    {'title': 'Product 9', 'price': "\$99.99", 'image': 'https://cdn.pixabay.com/photo/2016/11/18/21/30/bike-1836962_1280.jpg'},
    {'title': 'Product 10','price': "\$109.99",'image': 'https://cdn.pixabay.com/photo/2018/06/12/19/59/football-3471371_1280.jpg'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Essential Widgets"),
      ),
      body: GridView.builder(
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 2
          ),
          itemBuilder: (context,index){
            return InkWell(
              onTap: (){
                mySnackBar(context, products[index]['title']);
              },
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Image.network(
                          products[index]["image"]!,
                          fit: BoxFit.fill,
                        )
                    ),
                    Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(products[index]["title"]!),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(products[index]["price"]!),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
