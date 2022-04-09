import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final double elevation;
  final double borderRadius;

  const CustomCard({Key? key,
    required this.child,
    this.borderRadius = 10.0,
    this.elevation = 2.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: child,
    );
  }
}
