import 'package:donut_app_4sa/utils/pizza_tile.dart';
import 'package:flutter/material.dart';

class PizzaTab extends StatelessWidget {

//list of donuts
  final List pizzaOnSale = [
    // [ pizzaFlavor, pizzaStore, pizzaPrice, pizzaColor, imageName ]
    ["Aceitunas", "Mundo Aceituno", "90", Colors.blue, "lib/images/pizza/aceitunas.png"],
    ["Champiñones",  "Timizin Pizzas","85", Colors.red, "lib/images/pizza/champiñones.png"],
    ["Cuatro Sabores", "Maxima Pizza","120", Colors.purple, "lib/images/pizza/cuatro.png"],
    ["Hawaina", "Piña tas","95", Colors.yellow, "lib/images/pizza/hawaiian.png"],
    ["Carne Pastor", "Trompos", "120", Colors.red, "lib/images/pizza/pastor.png"],
    ["Peperoni",  "Cesarin","70", Colors.blue, "lib/images/pizza/peperoni.png"],
    ["Helado", "Morayta Pizza","99", Colors.purple, "lib/images/pizza/pizzahelado.png"],
    ["Queso", "Quesos Pizza","95", Colors.brown, "lib/images/pizza/queso.png"],
];

  PizzaTab({super.key});

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
        return PizzaTile(
          pizzaFlavor: pizzaOnSale[index][0],
          pizzaStore: pizzaOnSale [index][1],
          pizzaPrice: pizzaOnSale[index][2],
          pizzaColor: pizzaOnSale[index][3],
          imageName: pizzaOnSale[index][4],
        );
  });
  }
}