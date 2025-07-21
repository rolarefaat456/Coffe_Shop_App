import 'package:cafe/cart/cart.dart';
import 'package:cafe/details/details.dart';
import 'package:cafe/home/home.dart';
import 'package:cafe/onboard/onboard.dart';
import 'package:cafe/providers/animationlist.dart';
import 'package:cafe/providers/navbar.dart';
import 'package:cafe/providers/passprovider.dart';
import 'package:cafe/sign/signin.dart';
import 'package:cafe/sign/signup.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Passprovider(),),
        ChangeNotifierProvider(create: (context) => Animationlist(),),
        ChangeNotifierProvider(create: (context) => Navbar(),)
      ],
      child: MyApp()),
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Onboard(),
      routes: {
        'Signin' : (context) => Signin(),
        'Signup' : (context) => Signup(),
        'Home' : (context) => Home(),
        'Details' : (context) => Details(image: '', name: '', text: '', price: '',),
        'Cart' : (context) => Cart(),
        // 'Order' : (context) => Order()
      },
    );
  }
}