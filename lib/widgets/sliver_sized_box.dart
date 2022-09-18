import 'package:flutter/material.dart';

class SliverSizedBox extends StatelessWidget {
  final double? height;
  final double? width;
  final Widget? child;
  const SliverSizedBox({
    super.key,
    this.height,
    this.width,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: height,
        width: width,
        child: child,
      ),
    );
  }
}
