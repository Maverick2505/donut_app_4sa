import 'package:donut_app_4sa/utils/pancakes_tile.dart';
import 'package:flutter/material.dart';

class PancakesTab extends StatelessWidget {
  //list of pancakes
  final List pansOnSale = [
    // [ panFlavor, panStore, panPrice, panColor, imageName ]
    ["Clasicos", "La Abu", 40.0, Colors.red, "lib/images/pancakes/abuela.png"],
    ["Blueberry", "Azulitos", 45.0, Colors.blue, "lib/images/pancakes/blue.png"],
    ["Chocolate", "Morayta GOD", 50.0, Colors.brown, "lib/images/pancakes/choco.png"],
    ["Fresas", "PINKS", 45.0, Colors.pink, "lib/images/pancakes/fresas.png"],
    ["Heladinho", "Brasileiro", 50.0, Colors.green, "lib/images/pancakes/helado.png"],
    ["Originales", "IHOP", 45.0, Colors.yellow, "lib/images/pancakes/normales.png"],
    ["Platano", "Cosasfrutas", 35.0, Colors.purple, "lib/images/pancakes/platano.png"],
    ["Té", "New Things", 70.0, Colors.pinkAccent, "lib/images/pancakes/te.png"],
  ];


  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1/1.5
      ),
      itemCount: pansOnSale.length,
      padding: const EdgeInsets.all(12),
      itemBuilder: (context, index) {
        return PanTile(
          panFlavor: pansOnSale[index][0],
          panStore: pansOnSale[index][1],
          panPrice: pansOnSale[index][2].toString(),
          panColor: pansOnSale[index][3],
          imageName: pansOnSale[index][4],
        );
      },
    );
  }
}