import 'package:donut_app_4sa/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {

//list of donuts
  final List donutsOnSale = [
    // [ donutFlavor, donutStore, donutPrice, donutColor, imageName ]
    ["Glaciada", "Krispy Kreme", "36", Colors.blue, "lib/images/donuts/glaciada.png"],
    ["Strawberry",  "Timizin Donuts","45", Colors.red, "lib/images/donuts/Pink.png"],
    ["Rellena Manzana", "Morayta Donuts","40", Colors.purple, "lib/images/donuts/rellena.png"],
    ["Chocolate", "Slowson Donuts","30", Colors.brown, "lib/images/donuts/chocolate.png"],
    ["Bites", "Bolitas Donuts","40", Colors.grey, "lib/images/donuts/bites.png"],
    ["Glaciado Blanco", "LA Dona","30", Colors.orange, "lib/images/donuts/blanca.png"],
    ["Brownie", "Krispy Kreme","35",  Colors.pink, "lib/images/donuts/brownie.png"],
    ["Rellena Piña", "Morayta Donuts","40", Colors.yellow, "lib/images/donuts/piña.png"],
];

  DonutTab({super.key});

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
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutStore: donutsOnSale [index][1],
          donutPrice: donutsOnSale[index][2],
          donutColor: donutsOnSale[index][3],
          imageName: donutsOnSale[index][4],
        );
  });
  }
}