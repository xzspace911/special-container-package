import 'package:flutter/material.dart';

class SpecialContainer extends StatelessWidget {
  const SpecialContainer({
    super.key,
    this.height,
    this.width,
    this.radius,
    this.color,
    this.child,
  });
  final double? height;
  final double? width;
  final double? radius;
  final Color? color;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 100,
      width: width ?? double.infinity,
      decoration: BoxDecoration(
        color: color ?? Colors.amber,
        borderRadius: BorderRadius.circular(radius ?? 10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            spreadRadius: 5,
            blurRadius: 4,
          ),
        ],
      ),
      child: Center(child: child ?? Text('This is Special Container')),
    );
  }
}
