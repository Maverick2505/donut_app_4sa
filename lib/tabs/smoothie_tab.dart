import 'package:donut_app_4sa/utils/smoothie_tile.dart';
import 'package:flutter/material.dart';

class SmoothieTab extends StatelessWidget {

//list of donuts
  final List smoothieOnSale = [
    // [ smoothieFlavor, smoothieStore, smoothiePrice, smoothieColor, imageName ]
    ["Platano", "53% natural", "60", Colors.yellow, "lib/images/smoothie/banana.png"],
    ["Chamoyada",  "El Tajinazo","50", Colors.red, "lib/images/smoothie/chamoy.png"],
    ["Frambuesa", "Morayta Smoothies","Gratis", Colors.purple, "lib/images/smoothie/frambuesa.png"],
    ["Fresa", "53% natural","60", Colors.pink, "lib/images/smoothie/fresa.png"],
    ["Kiwwi", "OXX0", "70", Colors.green, "lib/images/smoothie/kiwi.png"],
    ["Mango",  "MANGOD","55", Colors.orange, "lib/images/smoothie/mango.png"],
    ["Piña", "Morayta Smoothie","Gratis", Colors.yellowAccent, "lib/images/smoothie/piña.png"],
    ["Sandia", "La Mejor","55", Colors.redAccent, "lib/images/smoothie/sandia.png"],
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
      itemCount: 8,
      padding: const EdgeInsets.all(12),
      //¿Que elemnto se contruira
      itemBuilder: (context, index) {
        return SmoothieTile(
          smoothieFlavor: smoothieOnSale[index][0],
          smoothieStore: smoothieOnSale [index][1],
          smoothiePrice: smoothieOnSale[index][2],
          smoothieColor: smoothieOnSale[index][3],
          imageName: smoothieOnSale[index][4],
        );
  });
  }
}