import 'package:flutter/material.dart';

class SpaceHorizontal extends StatelessWidget {
  final double size;
  const SpaceHorizontal(
    this.size, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
    );
  }
}
