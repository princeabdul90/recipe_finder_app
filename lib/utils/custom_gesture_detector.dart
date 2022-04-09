import 'package:flutter/material.dart';

class CustomGestureDetector extends StatelessWidget {
  final Widget widget;
  final Widget child;
  const CustomGestureDetector({
    Key? key,
    required this.widget,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
     onTap: () {
       Navigator.push(
           context,
           MaterialPageRoute(
               builder: (context) {
                 return widget;
               }
           )
       );
     },
      child: child,
    );
  }
}
