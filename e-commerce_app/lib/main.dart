import 'package:flutter/material.dart';
import 'package:flutter_login/splash_screen.dart';
import 'dart:async';



// import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}


// import 'product.dart';

// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       backgroundColor: Colors.amber,
//       appBar: AppBar(
//         title: Text("Sceptre Collections"),
//         backgroundColor: Color.fromRGBO(0, 10, 73, 0.782),
//         centerTitle: true,
//       ),
//       body: Center(

//         child: Text(
//           "We design, you rule with majesty.",
//         style: TextStyle(
//           fontSize: 12,
//           fontWeight: FontWeight.normal,
//           color: Color.fromARGB(255, 255, 140, 0)
//         ),
//         ),
//       ),
//     ),
//   ));
// }

// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});

// //   // This widget is the root of your application.
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Flutter Demo',
// //       theme: ThemeData(
// //         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
// //         useMaterial3: true,
// //       ),
// //       home: const ProductDetailsPage(title: 'Product Details'),
// //     );
// //   }
// // }

// // class ProductDetailsPage extends StatelessWidget {
// //   const ProductDetailsPage({Key? key, required this.title}) : super(key: key);
// //   final String title;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //         backgroundColor: Color.fromARGB(255, 77, 95, 57),
// //         appBar: AppBar(
// //           backgroundColor: Color.fromARGB(255, 0, 0, 0),
// //           titleTextStyle: const TextStyle(
// //               color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
// //           title: Text(title),
// //         ),
// //         body: ListView(
// //             shrinkWrap: true,
// //             padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
// //             children: <Widget>[
// //               Product(
// //                   name: "Chiffon Summer pink floral",
// //                   description:
// //                       "Colourful pink floral dress fit for sunny days with light weight",
// //                   price: "UGX: 55,000",
// //                   image: "41.jpg"),
// //             ]));
// //   }
// // }
