import 'package:flutter/material.dart';
import 'package:task_nov_24/view/HomeCart/HomeCart.dart';

class ShoppingCart extends StatefulWidget {
  ShoppingCart({super.key});

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  final List<String> cartItems = [
    "assets/images/hoodie.png",
    "assets/images/sweater.png",
    "assets/images/tshirt.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            setState(() {
              MaterialPageRoute(
                builder: (context) => HomeCart(),
              );
            });
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text("My Cart"),
      ),
      body: ListView.builder(
          itemCount: cartItems.length,
          itemBuilder: (context, index) {
            return Container(
              child: ListTile(
                // title: Text(cartItems[index]),
                trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      setState(() {
                        cartItems.removeAt(index);
                      });
                    }),
              ),
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(cartItems[index]),
                      fit: BoxFit.cover)),
            );

            /*  */
          }),
    );
  }
}
