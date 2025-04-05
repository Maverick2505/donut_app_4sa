import 'package:donut_app_4sa/utils/pancakes_tile.dart';
import 'package:flutter/material.dart';

class PancakesTab extends StatelessWidget {

//list of pancakes
  final List pansOnSale = [
    // [ panFlavor, panStore, panPrice, panColor, imageName ]
    ["Clasicos", "La Abu", "40", Colors.red, "lib/images/pancakes/abuela.png"],
    ["Blueberry",  "Azulitos","45", Colors.blue, "lib/images/pancakes/blue.png"],
    ["Chocolate", "Morayta GOD","50", Colors.brown, "lib/images/pancakes/choco.png"],
    ["Fresas", "PINKS","45", Colors.pink, "lib/images/pancakes/fresas.png"],
    ["Heladinho", "Brasileiro", "50", Colors.green, "lib/images/pancakes/helado.png"],
    ["Originales",  "IHOP","45", Colors.yellow, "lib/images/pancakes/normales.png"],
    ["Platano", "Cosasfrutas","35", Colors.purple, "lib/images/pancakes/platano.png"],
    ["Té", "New Things","70", Colors.pinkAccent, "lib/images/pancakes/te.png"],
];

  PancakesTab({super.key});

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
        return PanTile(
          panFlavor: pansOnSale[index][0],
          panStore: pansOnSale [index][1],
          panPrice: pansOnSale[index][2],
          panColor: pansOnSale[index][3],
          imageName: pansOnSale[index][4],
        );
  });
  }
}