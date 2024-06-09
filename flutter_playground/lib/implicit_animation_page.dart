import 'package:flutter/material.dart';

class ImplicitAnimationPage extends StatefulWidget {
  const ImplicitAnimationPage({super.key});

  @override
  State<ImplicitAnimationPage> createState() => _ImplicitAnimationPageState();
}

class _ImplicitAnimationPageState extends State<ImplicitAnimationPage> {
  double size = 200.0;
  Color color = Colors.red;
  BorderRadius borderRadius = BorderRadius.zero;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              size = size == 200.0 ? 600.0 : 200.0;
              color = color == Colors.red ? Colors.blue : Colors.red;
              borderRadius = borderRadius == BorderRadius.zero
                  ? BorderRadius.circular(300)
                  : BorderRadius.zero;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            //color: Colors.red,
            width: size,
            height: size,
            decoration: BoxDecoration(
              color: color,
              borderRadius: borderRadius,
            ),
          ),
        ),
      ),
    );
  }
}
