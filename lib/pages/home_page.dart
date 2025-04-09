import 'package:donut_app_4sa/pages/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:donut_app_4sa/tabs/burger_tab.dart';
import 'package:donut_app_4sa/tabs/donut_tab.dart';
import 'package:donut_app_4sa/tabs/pancakes_tab.dart';
import 'package:donut_app_4sa/tabs/pizza_tab.dart';
import 'package:donut_app_4sa/tabs/smoothie_tab.dart';
import 'package:donut_app_4sa/utils/my_tab.dart';
import 'package:donut_app_4sa/utils/shopping_cart.dart';
import 'package:donut_app_4sa/cart_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Icon(Icons.menu, color: Colors.grey[800]),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 24.0),
                child: Icon(Icons.person, color: Colors.grey[800]),
              )
            ],
          ),
          body: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  children: [
                    const Text("I want to ", style: TextStyle(fontSize: 24)),
                    const Text("Eat",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ))
                  ],
                ),
              ),
              
              TabBar(tabs: [
                const MyTab(iconPath: 'lib/icons/donut.png', label: 'Donut'),
                const MyTab(iconPath: 'lib/icons/burger.png', label: 'Burger'),
                const MyTab(iconPath: 'lib/icons/smoothie.png', label: 'Smoothie'),
                const MyTab(iconPath: 'lib/icons/pancakes.png', label: 'Pancakes'),
                const MyTab(iconPath: 'lib/icons/pizza.png', label: 'Pizza'),
              ]),
              
              Expanded(
                child: TabBarView(children: [
                  DonutTab(),
                  BurgerTab(),
                  SmoothieTab(),
                  PancakesTab(),
                  PizzaTab(),
                ]),
              ),
              
              const ShoppingCart()
            ],
          ),
        ),
      ),
    );
  }
}