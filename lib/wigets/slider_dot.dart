import 'package:flutter/material.dart';

class SliderDot extends StatelessWidget {
  bool isActive;
  SliderDot(this.isActive);
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      width: isActive ? 12 : 5,
      height: 5,
      margin: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
          color: isActive ? Colors.white : Colors.white54,
          borderRadius: const BorderRadius.all(Radius.circular(5))),
    );
  }
}
