import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_playground/animated_container_page.dart';
import 'package:flutter_playground/carousel_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.touch,
          PointerDeviceKind.mouse,
        },
      ),
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      //darkTheme: ThemeData.dark(),
      //themeMode: ThemeMode.dark,
      home: PageView(
        children: const [
          AnimatedContainerPage(),
          CarouselPage(),
        ],
      ),
    );
  }
}
