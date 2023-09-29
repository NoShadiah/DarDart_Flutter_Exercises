import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ProductDetailsPage(title: 'Product Details'),
    );
  }
}

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 240, 189, 127),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 3, 9, 65),
          titleTextStyle:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          title: Text(title),
        ),
        body: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
            children: <Widget>[
              Product(
                  name: "Chiffon Summer pink floral",
                  description:
                      "Colourful pink floral dress fit for sunny days with light weight",
                  price: "UGX: 55,000",
                  image: "dress1.jpg")
            ]));
  }
}

class Product extends StatelessWidget {
  const Product(
      {Key? key,
      required this.name,
      required this.description,
      required this.price,
      required this.image})
      : super(key: key);

  final String name;
  final String description;
  final String price;
  final String image;

  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(4),
        height: 120,
        child: Card(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset("assets/images/" + this.image, width: 40,),
                Expanded(
                  child: Container(
                      // padding: EdgeInsets.all(),
                      child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
                    Text("Name: " + this.name,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("Desription: " + this.description),
                    Text("Price: " + this.price.toString()),
                  ])),
                )
              ]),
        ));
  }
}
