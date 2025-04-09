import 'package:donut_app_4sa/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  //list of donuts
  final List donutsOnSale = [
    // [ donutFlavor, donutStore, donutPrice, donutColor, imageName ]
    ["Glaciada", "Krispy Kreme", 36.0, Colors.blue, "lib/images/donuts/glaciada.png"],
    ["Strawberry", "Timizin Donuts", 45.0, Colors.red, "lib/images/donuts/Pink.png"],
    ["Rellena Manzana", "Morayta Donuts", 40.0, Colors.purple, "lib/images/donuts/rellena.png"],
    ["Chocolate", "Slowson Donuts", 30.0, Colors.brown, "lib/images/donuts/chocolate.png"],
    ["Bites", "Bolitas Donuts", 40.0, Colors.grey, "lib/images/donuts/bites.png"],
    ["Glaciado Blanco", "LA Dona", 30.0, Colors.orange, "lib/images/donuts/blanca.png"],
    ["Brownie", "Krispy Kreme", 35.0, Colors.pink, "lib/images/donuts/brownie.png"],
    ["Rellena Piña", "Morayta Donuts", 40.0, Colors.yellow, "lib/images/donuts/piña.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1/1.5
      ),
      itemCount: donutsOnSale.length,
      padding: const EdgeInsets.all(12),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutStore: donutsOnSale[index][1],
          donutPrice: donutsOnSale[index][2].toString(),
          donutColor: donutsOnSale[index][3],
          imageName: donutsOnSale[index][4],
        );
      },
    );
  }
}