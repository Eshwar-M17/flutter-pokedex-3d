import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatefulWidget {
  const CustomFloatingActionButton({super.key});

  @override
  State<CustomFloatingActionButton> createState() =>
      _CustomFloatingActionButtonState();
}

class _CustomFloatingActionButtonState
    extends State<CustomFloatingActionButton> {
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() {
        isTapped = !isTapped;
      }),
      child: AnimatedContainer(
        width: 60,
        height: 60,
        duration: const Duration(milliseconds: 400),
        decoration: BoxDecoration(
          color: isTapped ?  Colors.purple[100] : Colors.purple[50],
          shape: BoxShape.circle,
        ),
        child: Icon(isTapped ? Icons.close : Icons.tune),
      ),
    );
  }
}
