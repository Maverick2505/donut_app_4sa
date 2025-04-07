import 'package:flutter/material.dart';

class SmoothieTile extends StatelessWidget {
  final String smoothieFlavor;
  final String smoothieStore;
  final String smoothiePrice;
  //dynamic porque sera de tipo color
  final dynamic smoothieColor;
  final String imageName;

  const SmoothieTile({super.key,
   required this.smoothieFlavor,
   required this.smoothieStore, 
   required this.smoothieColor, 
   required this.smoothiePrice, 
   required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        //color: smoothieColor[50],
        decoration: BoxDecoration(
          color: smoothieColor[50],
          //Esquinas redondeadas
          borderRadius: BorderRadius.circular(24)),

        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: smoothieColor[100],
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    topRight: Radius.circular(24)
                  ),
                ),
                padding: const EdgeInsets.symmetric(vertical: 2, horizontal:15),
                child: Text(
                  "\$$smoothiePrice",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: smoothieColor[800]
                  )
                  )
              ),
              
            ],),
            //Smoothie price
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:24,vertical:12),
                child: Image.asset(imageName),
              ),
              //Smoothie Flavor text
              Container(
                padding: const EdgeInsets.symmetric(vertical: 2, horizontal:15),
                child: Text(
                  smoothieFlavor,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black,
                  )
                  )
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 2, horizontal:15),
                child: Text(
                  smoothieStore,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  )
                  )
              ),

              //Icons
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 15),
                    child:Icon(Icons.favorite_border_outlined,
                      color: Colors.red[800])
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 15),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero, // Elimina el padding interno del botón
                      minimumSize: Size(29, 29), // Reduce el tamaño mínimo del botón
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap, // Reduce el área táctil
                    ),
                    onPressed: (){},
                    child: Text(
                        "Add",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          color: Colors.black87,
                        ),
                    ),
                  ),
                ),
              ],
            ),
        ]),
      ),
    ) ;
  }
}