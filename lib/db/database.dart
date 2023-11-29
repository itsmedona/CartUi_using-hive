import 'package:task_nov_24/model/item_model/item_model.dart';

class Database {
/*final List<String> images = [
    "assets/images/dining.png",
    "assets/images/furnitur.png",
    "assets/images/woodenchair.png",
    "assets/images/dining.png",
  ];

  final List<String> items = [
    "Georg Jensen Minimal Clock",
    "Teapot with black tea",
    "Pearl Beading Textured Faux Fur",
    "Atelier Ottoman Takumi Series",
  ];*/

  static List<ItemModel> itemList = [
    ItemModel(
      productId: 1,
      title: "Georg Jensen Minimal Clock",
      des: "Wodden chair 1",
      image: "assets/images/dining.png",
      price: 27000,
    ),
    ItemModel(
      productId: 2,
      title: "Teapot with black tea",
      des: "Wodden chair 2",
      image: "assets/images/furnitur.png",
      price: 28000,
    ),
    ItemModel(
      productId: 3,
      title: "Pearl Beading Textured Faux Fur",
      des: "Wodden chair 3",
      image: "assets/images/woodenchair.png",
      price: 20000,
    ),
    ItemModel(
      productId: 4,
      title: "Pearl Beading Textured Faux Fur",
      des: "Wodden chair 4",
      image: "assets/images/furnitur.png",
      price: 31000,
    )
  ];
}
