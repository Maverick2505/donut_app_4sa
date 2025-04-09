import 'package:donut_app_4sa/pages/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:donut_app_4sa/cart_model.dart';

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartModel>(context);

    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${cart.itemCount} Items | \$${cart.totalPrice.toStringAsFixed(2)}",
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )),
                const Text("Delivery Charges Included",
                    style: TextStyle(fontSize: 12))
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text("Your Cart (${cart.itemCount} items)"),
                  content: SizedBox(
                    width: double.maxFinite,
                    child: cart.itemCount == 0
                        ? const Text("Your cart is empty")
                        : ListView.builder(
                            shrinkWrap: true,
                            itemCount: cart.items.length,
                            itemBuilder: (context, index) {
                              final item = cart.items[index];
                              return ListTile(
                                leading: Container(
                                  width: 20,
                                  height: 20,
                                  color: item['color'],
                                ),
                                title: Text(item['name']),
                                trailing: Text("\$${item['price'].toStringAsFixed(2)}"),
                              );
                            },
                          ),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text("Close"),
                    ),
                    if (cart.itemCount > 0)
                      TextButton(
                        onPressed: () {
                          cart.clearCart();
                          Navigator.pop(context);
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Cart cleared"),
                              duration: Duration(seconds: 1),
                            ),
                          );
                        },
                        child: const Text("Clear Cart",
                            style: TextStyle(color: Colors.red)),
                      ),
                  ],
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pink,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            ),
            child: const Text("View Cart",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )),
          ),
        ],
      ),
    );
  }
}