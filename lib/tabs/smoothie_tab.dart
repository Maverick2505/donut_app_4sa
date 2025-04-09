import 'package:donut_app_4sa/utils/smoothie_tile.dart';
import 'package:flutter/material.dart';

class SmoothieTab extends StatelessWidget {
  //list of smoothies
  final List smoothieOnSale = [
    // [ smoothieFlavor, smoothieStore, smoothiePrice, smoothieColor, imageName ]
    ["Platano", "53% natural", 60.0, Colors.yellow, "lib/images/smoothie/banana.png"],
    ["Chamoyada", "El Tajinazo", 50.0, Colors.red, "lib/images/smoothie/chamoy.png"],
    ["Frambuesa", "Morayta Smoothies", 0.0, Colors.purple, "lib/images/smoothie/frambuesa.png"],
    ["Fresa", "53% natural", 60.0, Colors.pink, "lib/images/smoothie/fresa.png"],
    ["Kiwwi", "OXX0", 70.0, Colors.green, "lib/images/smoothie/kiwi.png"],
    ["Mango", "MANGOD", 55.0, Colors.orange, "lib/images/smoothie/mango.png"],
    ["Piña", "Morayta Smoothie", 0.0, Colors.yellowAccent, "lib/images/smoothie/piña.png"],
    ["Sandia", "La Mejor", 55.0, Colors.redAccent, "lib/images/smoothie/sandia.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1/1.5
      ),
      itemCount: smoothieOnSale.length,
      padding: const EdgeInsets.all(12),
      itemBuilder: (context, index) {
        return SmoothieTile(
          smoothieFlavor: smoothieOnSale[index][0],
          smoothieStore: smoothieOnSale[index][1],
          smoothiePrice: smoothieOnSale[index][2].toString(),
          smoothieColor: smoothieOnSale[index][3],
          imageName: smoothieOnSale[index][4],
        );
      },
    );
  }
}