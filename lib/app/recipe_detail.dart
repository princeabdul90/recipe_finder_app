import 'package:flutter/material.dart';
import 'recipe.dart';
import '../utils/customs.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;
  const RecipeDetail({Key? key, required this.recipe}) : super(key: key);

  @override
  State<RecipeDetail> createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  int _slider = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(

            children: [
              //add image here
              SizedBox(
                  height: 300,
                  width: double.infinity,
                  child: Image(image: AssetImage(widget.recipe.imageUrl)),),
              const SizedBox(height: 10.0,),
              Text(widget.recipe.label, style: const TextStyle(fontSize: 18),),
              //add ingredients here
              Expanded(
                child: ListView.builder(
                    padding: const EdgeInsets.all(7),
                    itemCount: widget.recipe.ingredients.length,
                    itemExtent: 20.0,
                    itemBuilder: (BuildContext context, int index){
                  final ingredient = widget.recipe.ingredients[index];
                  return Text('${ingredient.quantity * _slider} ' '${ingredient.measure} ' '${ingredient.name}');
                }),
              ),
              // add slider here
              CustomSlider(
                activeColor: Colors.pinkAccent,
                inactiveColor: Colors.blue,
                  label: '${_slider * widget.recipe.servings} servings',
                  value: _slider.toDouble(),
                  onChange:(newValue){
                    setState(() {
                      _slider = newValue.round();
                    });
                  },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
