import 'package:donut_app_4sa/pages/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:donut_app_4sa/cart_model.dart';

class PanTile extends StatelessWidget {
  final String panFlavor;
  final String panStore;
  final String panPrice;
  final dynamic panColor;
  final String imageName;

  const PanTile({
    super.key,
    required this.panFlavor,
    required this.panStore,
    required this.panColor,
    required this.panPrice,
    required this.imageName,
  });

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartModel>(context, listen: false);

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: panColor[50],
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: panColor[100],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      topRight: Radius.circular(24)),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 15),
                  child: Text("\$$panPrice",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: panColor[800],
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
              child: Text(panFlavor,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black,
                  )),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 15),
              child: Text(panStore,
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
                    panFlavor,                      // name (String)
                    double.parse(panPrice),         // price (double)
                    panColor,                       // color (dynamic)
                );
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content: Text("$panFlavor added to cart"),
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