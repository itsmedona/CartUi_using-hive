import 'package:flutter/material.dart';
import 'package:task_nov_24/view/HomeCart/HomeCart.dart';
//import 'package:task_nov_24/view/HomeCart/Shopping_Cart/Shopping_Cart.dart';

void main() {
  runApp(MyCart());
}

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: ShoppingCart(),
      home: HomeCart(),
    );
  }
}
