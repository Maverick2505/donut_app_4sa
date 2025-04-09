import 'package:donut_app_4sa/utils/pizza_tile.dart';
import 'package:flutter/material.dart';

class PizzaTab extends StatelessWidget {
  //list of pizzas
  final List pizzaOnSale = [
    // [ pizzaFlavor, pizzaStore, pizzaPrice, pizzaColor, imageName ]
    ["Aceitunas", "Mundo Aceituno", 90.0, Colors.blue, "lib/images/pizza/aceitunas.png"],
    ["Champiñones", "Timizin Pizzas", 85.0, Colors.red, "lib/images/pizza/champiñones.png"],
    ["Cuatro Sabores", "Maxima Pizza", 120.0, Colors.purple, "lib/images/pizza/cuatro.png"],
    ["Hawaina", "Piña tas", 95.0, Colors.yellow, "lib/images/pizza/hawaiian.png"],
    ["Carne Pastor", "Trompos", 120.0, Colors.red, "lib/images/pizza/pastor.png"],
    ["Peperoni", "Cesarin", 70.0, Colors.blue, "lib/images/pizza/peperoni.png"],
    ["Helado", "Morayta Pizza", 99.0, Colors.purple, "lib/images/pizza/pizzahelado.png"],
    ["Queso", "Quesos Pizza", 95.0, Colors.brown, "lib/images/pizza/queso.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1/1.5
      ),
      itemCount: pizzaOnSale.length,
      padding: const EdgeInsets.all(12),
      itemBuilder: (context, index) {
        return PizzaTile(
          pizzaFlavor: pizzaOnSale[index][0],
          pizzaStore: pizzaOnSale[index][1],
          pizzaPrice: pizzaOnSale[index][2].toString(),
          pizzaColor: pizzaOnSale[index][3],
          imageName: pizzaOnSale[index][4],
        );
      },
    );
  }
}