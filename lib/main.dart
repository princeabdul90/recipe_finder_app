import 'package:flutter/material.dart';
import 'home_page.dart';

void main(){
  runApp(const SimpleRecipeApp());
}

class SimpleRecipeApp extends StatelessWidget {
  const SimpleRecipeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();

    return MaterialApp(
      title: 'Simple Recipe App',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.pink,
          secondary: Colors.indigo
        )
      ),
      home: const HomePage(title: 'Simple Recipe App',),
    );
  }
}
