import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  const DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //Prepa 1
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //No. Columnas
        crossAxisCount: 2),
      //¿Cuantos elementos? 
      itemCount: 2,
      padding: const EdgeInsets.all(12),
      //¿Que elemnto se contruira
      itemBuilder: (context, index) {
        return;
  });
  }
}