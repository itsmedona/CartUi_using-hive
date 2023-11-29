import 'package:flutter/material.dart';
import 'package:task_nov_24/db/database.dart';
import 'package:task_nov_24/view/HomeCart/Shopping_Cart/Shopping_Cart.dart';

class HomeCart extends StatefulWidget {
  const HomeCart({super.key});

  @override
  State<HomeCart> createState() => _HomeCartState();
}

class _HomeCartState extends State<HomeCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ShoppingCart(),
                    ));
              },
              icon: Icon(Icons.shopping_cart))
        ],
        backgroundColor: Colors.deepPurpleAccent,
        elevation: 0,
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Featured",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: Colors.white24),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Collection",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: Colors.white24),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Trending",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: Colors.white24),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Top Selling",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: Colors.white24),
                ),
                SizedBox(
                  width: 30,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  mainAxisExtent: 270,
                ),
                itemBuilder: (context, index) => Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        Database.itemList[index].image),
                                    fit: BoxFit.cover)),
                            height: 200,
                            width: double.infinity,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                IconButton(onPressed: () {
                                  setState(() {
                                  });
                                }, icon:Icon(Icons.favorite))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(Database.itemList[index].title,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700
                          ),),
                          SizedBox(height: 15,),
                          Text(Database.itemList[index].price.toString(),
                          style: TextStyle(
                            fontSize:15,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                    itemCount: Database.itemList.length,
                    ),
          )
        ],
      ),
    );
  }
}


