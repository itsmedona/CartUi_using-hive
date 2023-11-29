import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:task_nov_24/model/item_model/item_model.dart';
import 'package:task_nov_24/view/HomeCart/HomeCart.dart';
//import 'package:task_nov_24/view/HomeCart/Shopping_Cart/Shopping_Cart.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(ItemModelAdapter());
  var box = await Hive.openBox<ItemModel>('cart');
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
