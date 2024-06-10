import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  const AnimatedContainerPage({super.key});

  @override
  State<AnimatedContainerPage> createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isLoading = !isLoading;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 700),
            curve: Curves.fastOutSlowIn,
            width: isLoading ? 70.0 : 300.0,
            height: 70.0,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(isLoading ? 35.0 : 10.0),
            ),
            child: isLoading
                ? const Center(
                    child: CircularProgressIndicator(
                      color: Colors.white,
                    ),
                  )
                : const Center(
                    child: Text(
                      'ENTRAR',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
