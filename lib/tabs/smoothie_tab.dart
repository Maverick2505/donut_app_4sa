import 'package:donut_app_4sa/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class SmoothieTab extends StatelessWidget {

//list of donuts
  final List donutsOnSale = [
    // [ donutFlavor, donutStore, donutPrice, donutColor, imageName ]
    ["Ice Cream", "Krispy Kreme", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry",  "Timizin Donuts","45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "Morayta Donuts","84", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", "Slowson Donuts","95", Colors.brown, "lib/images/chocolate_donut.png"],
];

  SmoothieTab({super.key});

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
      itemCount: 4,
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