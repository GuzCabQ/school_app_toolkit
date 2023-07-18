import 'package:flutter/material.dart';

class SpaceVertical extends StatelessWidget {
  final double size;
  const SpaceVertical(
    this.size, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
    );
  }
}
