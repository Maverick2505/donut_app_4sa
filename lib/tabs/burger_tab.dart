import 'package:donut_app_4sa/utils/burger_tile.dart';
import 'package:flutter/material.dart';

class BurgerTab extends StatelessWidget {

//list of burgers
  final List burgersOnSale = [
    // [ burguerFlavor, burgerStore, burgerPrice, burgerColor, imageName ]
    ["Cheese Burger", "Atomica", "50", Colors.blue, "lib/images/Burgers/Cheese.png"],
    ["Cangre Burger",  "Crustacio Cascarudo","30", Colors.red, "lib/images/Burgers/simple.png"],
    ["Chiken Burger", "Pollos hermanos","60", Colors.yellow, "lib/images/Burgers/pollo.png"],
    ["Vegetarian", "Las Plantas","45", Colors.green, "lib/images/Burgers/vegetarian.png"],
    ["BBQ", "Macdonals", "45", Colors.redAccent, "lib/images/Burgers/bbq.png"],
    ["Rubius",  "El Rubius","50", Colors.purple, "lib/images/Burgers/rubius.png"],
    ["Tapa Arterias", "Kruity El Payaso","60", Colors.lightGreen, "lib/images/Burgers/tapa.png"],
    ["Tripe Carne", "KingBurger","70", Colors.red, "lib/images/Burgers/triple.png"],
];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //Prepa 1
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //No. Columnas
        crossAxisCount: 2,
        //Proporcionn ancho y alto
        childAspectRatio: 1/1.5),
      //¿Cuantos elementos? 
      itemCount: 8,
      padding: const EdgeInsets.all(12),
      //¿Que elemnto se contruira
      itemBuilder: (context, index) {
        return BurgerTile(
          burgerFlavor: burgersOnSale[index][0],
          burgerStore: burgersOnSale [index][1],
          burgerPrice: burgersOnSale[index][2],
          burgerColor: burgersOnSale[index][3],
          imageName: burgersOnSale[index][4],
        );
  });
  }
}