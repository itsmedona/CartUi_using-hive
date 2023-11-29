import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:task_nov_24/model/item_model/item_model.dart';

class ProductScreenController {
  var box = Hive.box<ItemModel>("cartBox");

  addToCart(ItemModel product, BuildContext context) async {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Item added to cart")));
  }

}
