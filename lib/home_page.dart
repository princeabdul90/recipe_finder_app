import 'package:flutter/material.dart';
import '../utils/customs.dart';
import '../app/apps.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),

      body: SafeArea(
        child: ListView.builder(
          padding: const EdgeInsets.all(4.0),
            itemCount: Recipe.samples.length,
            itemBuilder: (BuildContext context, int index){
              return CustomGestureDetector(
                  widget: RecipeDetail(recipe: Recipe.samples[index]),
                  child: RecipeCard(recipe: Recipe.samples[index]),
              );
            },
        ),
      ),
    );
  }
}
