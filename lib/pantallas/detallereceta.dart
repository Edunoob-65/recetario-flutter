import 'package:flutter/material.dart';
import 'dart:io';

import 'package:recetariopersonal/modelos/receta.dart';

class RecipeDetailScreen extends StatelessWidget {
  final Receta receta;

  RecipeDetailScreen({required this.receta});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(receta.titulo),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ingredientes:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            Text(receta.ingredientes),
            SizedBox(height: 10.0),
            Text(
              'Pasos:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            Text(receta.pasos),
            receta.rutaImagen != null ? Image.file(File(receta.rutaImagen!)) : Container(),
          ],
        ),
      ),
    );
  }
}
