import 'package:flutter/material.dart';

class CustomSlider extends StatelessWidget {
  final dynamic onChange;
  final dynamic value;
  final double min;
  final double max;
  final int division;
  final String label;
  final Color activeColor;
  final Color inactiveColor;
  const CustomSlider({
    Key? key,
    required this.onChange,
    required this.value,
    this.label = '1',
    this.min = 1,
    this.max = 10,
    this.division = 10,
    this.activeColor = Colors.blue,
    this.inactiveColor = Colors.black26,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slider(
        min: min,
        max: max,
        divisions: division,
        activeColor: activeColor,
        inactiveColor: inactiveColor,
        label: label,
        value: value,
        onChanged: onChange
    );
  }
}
