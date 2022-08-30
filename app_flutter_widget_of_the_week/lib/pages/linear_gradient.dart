import 'package:flutter/material.dart';
import 'dart:math' as math;

class LinearGradientPage extends StatelessWidget {
  const LinearGradientPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Linear Gradient'),
      ),
      body: const LinearGradientWidget(),
    );
  }
}

class LinearGradientWidget extends StatelessWidget {
  const LinearGradientWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  transform: GradientRotation(math.pi / 4),
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.15, 0.5, 1],
                  colors: [
                    Colors.blue,
                    Colors.indigo,
                    Colors.deepOrange,
                  ],
                ),
              ),
              width: 100,
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}
