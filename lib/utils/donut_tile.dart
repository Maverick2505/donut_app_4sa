import 'package:donut_app_4sa/pages/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:donut_app_4sa/cart_model.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutStore;
  final String donutPrice;
  final dynamic donutColor;
  final String imageName;

  const DonutTile({
    super.key,
    required this.donutFlavor,
    required this.donutStore,
    required this.donutColor,
    required this.donutPrice,
    required this.imageName,
  });

  @override
 Widget build(BuildContext context) {
    final cart = Provider.of<CartModel>(context, listen: false);

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: donutColor[50],
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: donutColor[100],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      topRight: Radius.circular(24)),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 15),
                  child: Text("\$$donutPrice",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: donutColor[800],
                      )),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Image.asset(imageName),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 15),
              child: Text(donutFlavor,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black,
                  )),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 15),
              child: Text(donutStore,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 15),
                  child: Icon(Icons.favorite_border_outlined,
                      color: Colors.red[800]),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 15),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: const Size(29, 29),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    onPressed: () {
                cart.addItem(
                    donutFlavor,                      // name (String)
                    double.parse(donutPrice),         // price (double)
                    donutColor,                       // color (dynamic)
                );
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content: Text("$donutFlavor added to cart"),
                        duration: const Duration(seconds: 1),
                    ),
                );
            },
                    child: const Text("Add",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          color: Colors.black87,
                        )),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}