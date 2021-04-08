import 'package:flutter/material.dart';
import 'detail_produk.dart';


void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
 @override
 //Isi dari widget
 Widget build(BuildContext context) {
 //Material App
 return MaterialApp(
 title: 'First App',
  home: MyHomePage(),
 );
 }
}

class MyHomePage extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
 return Scaffold(
  appBar: AppBar(title: Text("Product Listing")),
  body: ListView(
    shrinkWrap: true,
    padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
    children: <Widget>[
      new GestureDetector(
        onTap: () {
          Navigator.of(context).push(new MaterialPageRoute( builder: (BuildContext context) => DetailProduk(
          name: "ACER",
          description: "Ini laptop ACer Cangih",
          price: 1000,
          image: "laptop1.jpeg",
          star: 1,
          ),
          ));
        },

        child: ProductBox(
          name: "ACERs",
          description: "Ini laptop ACer Cangih",
          price: 1000,
          image: "laptop1.jpeg",
          star: 1),
      ),
      new GestureDetector(
        onTap: () {
          Navigator.of(context).push(new MaterialPageRoute(
          builder: (BuildContext context) => DetailProduk(
            name: "Adventors",
            description: "Pixel is the most featureful phone ever",
            price: 800,
            image: "laptop2.jpg",
            star: 4,
            ),
            ));
        },
        child: ProductBox(
          name: "Adventorss",
          description: "Pixel is the most featureful phone ever",
          price: 800,
          image: "laptop2.jpg",
          star: 4)),
      new GestureDetector(
        onTap: () {
          Navigator.of(context).push(new MaterialPageRoute(
          builder: (BuildContext context) => DetailProduk(
            name: "ASUS",
            description: "Laptop is most productive development tool",
            price: 2000,
            image: "laptop3.jpg",
            star: 3,
            ),
          ));
        },
        child: ProductBox(
          name: "ASUS",
          description: "Laptop is most productive development tool",
          price: 2000,
          image: "laptop3.jpg",
          star: 3),
        ),

      new GestureDetector(
        onTap: () {
          Navigator.of(context).push(new MaterialPageRoute(
          builder: (BuildContext context) => DetailProduk(
            name: "MAcbook",
            description: "Laptop is most productive development tool",
            price: 1500,
            image: "laptop4.jpg",
            star: 3,
            ),
          ));
        },
        child: ProductBox(
          name: "MAcbook",
          description:"Laptop is the most useful device ever for meeting",
          price: 1500,
          image: "laptop4.jpg",
          star: 3),
      ),
    new GestureDetector(
      onTap: () {
        Navigator.of(context).push(new MaterialPageRoute(
        builder: (BuildContext context) => DetailProduk(
          name: "SamSUng",
          description: "Laptop is most productive development tool",
          price: 100,
          image: "laptop5.jpg",
          star: 5,
          ),
        ));
      },
      child: ProductBox(
        name: "SamSUng",
        description: "Pendrive is useful storage medium",
        price: 100,
        image: "laptop5.jpg",
        star: 5,
      ), ),
      ],
    ));
    }}

class ProductBox extends StatelessWidget {
 ProductBox({Key key, this.name, this.description, this.price, this.image, this.star})
 : super(key: key);
 final String name;
 final String description;
 final int price;
 final String image;
 final int star;
 Widget build(BuildContext context) {
 return Container(
  padding: EdgeInsets.all(2),
  child: Card(
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Image.asset(
        "assets/appimages/" + image,
        width: 150,
      ),
      Expanded(
        child: Container(
          padding: EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
            Text(this.name, style: TextStyle(fontWeight: FontWeight.bold,)),
            Text(this.description),
            Text(
              "Price: " + this.price.toString(),
              style: TextStyle(color: Colors.red),
            ),
            Row(
              children: <Widget>[
            Row(
              children: <Widget>[
                Icon(Icons.star, size: 10, color: Colors.deepOrange,),
                Icon(Icons.star, size: 10, color: Colors.deepOrange,),
                Icon(Icons.star, size: 10, color: Colors.deepOrange,),
                Icon(Icons.star, size: 10, color: Colors.orange),
              ],
              )
              ],
            )
            ],
          )
        )
      )
    ]
    )
  )
 );
 }
}
