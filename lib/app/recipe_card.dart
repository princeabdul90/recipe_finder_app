import 'package:flutter/material.dart';
import 'package:flutter_goal_tentimes/app/recipe.dart';
import '../utils/customs.dart';

class RecipeCard extends CustomCard {
  final Recipe recipe;

  RecipeCard({Key?key, required this.recipe}): super(
      key: key,
      borderRadius: 6.0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
        children: <Widget>[
          Image(
            image: AssetImage(recipe.imageUrl),
          ),
          const SizedBox(
            height: 14.0,
          ),
          Text(
            recipe.label,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              fontFamily: 'Palatino',
            ),
          ),
        ],
    ),
      )
  );
}